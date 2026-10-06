import 'package:myfitnesspal_client/src/decoding.dart';
import 'package:myfitnesspal_client/src/exceptions/barcode_failure.dart';
import 'package:myfitnesspal_client/src/exceptions/mfp_exception.dart';
import 'package:myfitnesspal_client/src/http_method.dart';
import 'package:myfitnesspal_client/src/models/barcode_check.dart';
import 'package:myfitnesspal_client/src/models/barcode_result.dart';
import 'package:myfitnesspal_client/src/models/food.dart';
import 'package:myfitnesspal_client/src/requests/food_search_hit.dart';
import 'package:myfitnesspal_client/src/requests/food_search_query.dart';
import 'package:myfitnesspal_client/src/requests/food_search_response.dart';
import 'package:myfitnesspal_client/src/requests/foods_query.dart';
import 'package:myfitnesspal_client/src/requests/foods_response.dart';
import 'package:myfitnesspal_client/src/requests/search_scope.dart';
import 'package:myfitnesspal_client/src/sync/barcode_lookup.dart';
import 'package:myfitnesspal_client/src/sync/scanned_food.dart';
import 'package:myfitnesspal_client/src/sync/sync_packets.dart';
import 'package:myfitnesspal_client/src/transport.dart';

final class MfpFoods {
  const MfpFoods(this._transport);

  static const _search = '/v2/search/nutrition';
  static const _foods = '/v2/foods';
  static const defaultMaxResults = 25;

  final MfpTransport _transport;

  Future<List<MfpFood>> search(
    String query, {
    int maxResults = defaultMaxResults,
    bool verifiedOnly = false,
    String? countryCode,
  }) async {
    final response = await _transport.request(
      HttpMethod.get,
      _search,
      mapped(FoodSearchResponseMapper.fromMap),
      query: FoodSearchQuery(
        q: query,
        scope: verifiedOnly ? SearchScope.verified : SearchScope.all,
        maxItems: maxResults,
        countryCode: countryCode?.toUpperCase(),
      ).toMap(),
    );
    return [
      for (final hit in response.items)
        ...switch (hit) {
          FoodHit(:final item) => [item],
          OtherHit() => const <MfpFood>[],
        },
    ];
  }

  Future<MfpFood?> byId(String id) async {
    final response = await _transport.request(
      HttpMethod.get,
      _foods,
      mapped(FoodsResponseMapper.fromMap),
      query: FoodsQuery(ids: id).toMap(),
    );
    return response.items.firstOrNull;
  }

  Future<MfpBarcodeResult> byBarcode(String barcode) async {
    if (_invalidReason(checkBarcode(barcode)) case final reason?) {
      throw MfpBarcodeException(barcode, MfpBarcodeFailure.invalidBarcode, [
        reason,
      ]);
    }
    final scanned = await _transport.sync(
      barcodeLookupPacket(barcode),
      (reply) => switch (reply.status) {
        syncStatusOk => scannedFoodFrom(reply.packets),
        final status => throw MfpBarcodeException(
          barcode,
          MfpBarcodeFailure.rejected,
          ['sync status $status'],
        ),
      },
    );
    return switch (scanned) {
      null => MfpBarcodeUnknown(barcode),
      final ScannedFood food => await _resolve(barcode, food),
    };
  }

  Future<MfpBarcodeResult> _resolve(
    String barcode,
    ScannedFood scanned,
  ) async => switch (await byId(scanned.foodId)) {
    final MfpFood food => MfpBarcodeFound(barcode, food),
    null => MfpBarcodeUnresolved(
      barcode,
      foodId: scanned.foodId,
      description: scanned.description,
      brandName: scanned.brandName,
    ),
  };

  static String? _invalidReason(MfpBarcodeCheck check) => switch (check) {
    MfpValidBarcode() => null,
    MfpBarcodeNotDigits() => 'a barcode has digits only',
    MfpBarcodeWrongLength(:final barcode) =>
      'a barcode has 8, 12, 13 or 14 digits, not ${barcode.length}',
    MfpBarcodeWrongCheckDigit(:final actual, :final expected) =>
      'check digit is $actual, $expected expected',
  };
}

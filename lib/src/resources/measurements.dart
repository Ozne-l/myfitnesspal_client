import 'package:myfitnesspal_client/src/decoding.dart';
import 'package:myfitnesspal_client/src/http_method.dart';
import 'package:myfitnesspal_client/src/models/measurement.dart';
import 'package:myfitnesspal_client/src/models/weight_unit.dart';
import 'package:myfitnesspal_client/src/requests/add_measurements_request.dart';
import 'package:myfitnesspal_client/src/requests/measurement_request.dart';
import 'package:myfitnesspal_client/src/requests/measurements_query.dart';
import 'package:myfitnesspal_client/src/requests/measurements_response.dart';
import 'package:myfitnesspal_client/src/transport.dart';

final class MfpMeasurements {
  const MfpMeasurements(this._transport);

  static const _measurements = '/v2/measurements';
  static const _weight = 'weight';
  static const _typeSeparator = ',';

  final MfpTransport _transport;

  /// The measurements of [date]. For a weight, MyFitnessPal returns the
  /// first one saved that day, not the latest.
  Future<List<MfpMeasurement>> forDate(
    DateTime date, {
    Iterable<String> types = const [_weight],
  }) async {
    final response = await _transport.request(
      HttpMethod.get,
      _measurements,
      mapped(MeasurementsResponseMapper.fromMap),
      query: MeasurementsQuery(
        entryDate: formatMfpDate(date),
        types: types.join(_typeSeparator),
      ).toMap(),
    );
    return response.items;
  }

  /// Saves a weight for [date] and returns the created measurement. To
  /// correct a day's weight, [remove] the old one first.
  Future<MfpMeasurement?> logWeight({
    required double value,
    required MfpWeightUnit unit,
    required DateTime date,
  }) async {
    final response = await _transport.request(
      HttpMethod.post,
      _measurements,
      mapped(MeasurementsResponseMapper.fromMap),
      body: AddMeasurementsRequest(
        items: [
          MeasurementRequest(
            type: _weight,
            value: value,
            unit: unit,
            date: formatMfpDate(date),
          ),
        ],
      ).toMap(),
    );
    return response.items.firstOrNull;
  }

  Future<void> remove(String measurementId) => _transport.request(
    HttpMethod.delete,
    '$_measurements/$measurementId',
    ignoreBody,
  );
}

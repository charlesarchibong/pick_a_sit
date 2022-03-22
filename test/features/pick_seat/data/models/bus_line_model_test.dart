import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:pick_a_sit/features/pick_seat/data/datasources/fixture.dart';
import 'package:pick_a_sit/features/pick_seat/data/models/bus_line_model.dart';
import 'package:pick_a_sit/features/pick_seat/domain/entities/bus_line_entity.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  final tBusLineModel = BusLineModel(
    name: 'Пример 1',
    departure: DateTime.parse('2022-03-19 07:16:25.504402'),
    gate: '12',
    number: '1',
    onTime: false,
  );
  test('should be a subclass of BusLineModel entity', () async {
    // ignore: avoid_print
    print(tBusLineModel.departure.toString());
    expect(tBusLineModel, isA<BusLineEntity>());
  });
  group('fromJson', () {
    test('should return a [BusLineModel] when the json is valid', () async {
      final jsonMap =
          json.decode(await fixture('bus_lines.json')) as Map<String, dynamic>;

      final list = jsonMap['lines'] as List;
      final first = BusLineModel.fromJson(list[0] as Map<String, dynamic>);

      expect(first, tBusLineModel);
    });
  });

  group('toJson', () {
    test('should return a json object of bus_line model', () async {
      final result = tBusLineModel.toJson();
      final jsonMap =
          json.decode(await fixture('bus_lines.json')) as Map<String, dynamic>;

      final list = jsonMap['lines'] as List;
      expect(
        result,
        list[0] as Map<String, dynamic>,
      );
    });
  });
}

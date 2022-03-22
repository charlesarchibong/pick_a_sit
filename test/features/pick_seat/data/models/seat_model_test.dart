import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:pick_a_sit/features/pick_seat/data/datasources/fixture.dart';
import 'package:pick_a_sit/features/pick_seat/data/models/seat_model.dart';
import 'package:pick_a_sit/features/pick_seat/data/models/user_model.dart';
import 'package:pick_a_sit/features/pick_seat/domain/entities/seat_entity.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  const tSeatModel = SeatModel(
    number: 3,
    price: 23.2,
    busLine: '1',
    userModel: UserModel(
      firstName: 'John',
      lastName: 'Doe',
      image: 'assets/images/ellipse.png',
    ),
  );

  test('should be a subclass of SeatEntity entity', () async {
    expect(tSeatModel, isA<SeatEntity>());
  });

  group('json', () {
    test('should return a [SeatModel] when the json is valid', () async {
      final jsonMap =
          json.decode(await fixture('seat.json')) as Map<String, dynamic>;

      final list = jsonMap['1'] as List;
      final jsonSeatModel = SeatModel.fromJson(list[2] as Map<String, dynamic>);

      expect(jsonSeatModel, tSeatModel);
    });

    test('should return a json object of seat model', () async {
      final result = tSeatModel.toJson();
      final jsonMap =
          json.decode(await fixture('seat.json')) as Map<String, dynamic>;

      final list = jsonMap['1'] as List;
      expect(
        result,
        list[2] as Map<String, dynamic>,
      );
    });
  });
}

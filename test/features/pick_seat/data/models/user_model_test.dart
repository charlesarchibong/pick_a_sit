import 'package:flutter_test/flutter_test.dart';
import 'package:pick_a_sit/features/pick_seat/data/models/user_model.dart';
import 'package:pick_a_sit/features/pick_seat/domain/entities/user_entity.dart';

void main() {
  const tUserModel = UserModel(
    firstName: 'John',
    lastName: 'Doe',
    image: 'assets/images/ellipse.png',
  );

  test('should be a subclass of UserEntity entity', () {
    expect(tUserModel, isA<UserEntity>());
  });

  group('json', () {
    test('should return a [UserModel] when the json is valid', () {
      final jsonMap = {
        'firstName': 'John',
        'lastName': 'Doe',
        'image': 'assets/images/ellipse.png',
      };

      final result = UserModel.fromJson(jsonMap);

      expect(result, tUserModel);
    });

    test('should return a json object of user model', () {
      final result = tUserModel.toJson();

      expect(result, {
        'firstName': 'John',
        'lastName': 'Doe',
        'image': 'assets/images/ellipse.png',
      });
    });
  });
}

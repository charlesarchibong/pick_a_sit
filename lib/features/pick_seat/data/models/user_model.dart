import 'package:json_annotation/json_annotation.dart';
import 'package:pick_a_sit/features/pick_seat/domain/entities/user_entity.dart';

part 'user_model.g.dart';

/// [UserModel] is the model that represent a user.
/// and it's used to convert the json response to [UserModel]
/// it's a subclass of [UserEntity]

@JsonSerializable()
class UserModel extends UserEntity {
  /// Create a [UserModel] instance with a [image],
  const UserModel({
    required String image,
    required String firstName,
    required String lastName,
  }) : super(
          image: image,
          firstName: firstName,
          lastName: lastName,
        );

  /// A function that converts a json  to a [UserModel] instance.
  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  /// A function that converts this [UserModel] instance to a json.
  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}

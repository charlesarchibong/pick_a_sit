import 'package:equatable/equatable.dart';
import 'package:pick_a_sit/features/pick_seat/data/models/user_model.dart';

/// [UserEntity] is the entity that represents a User in the app.
class UserEntity extends Equatable {
  /// Create a [UserEntity] instance with a  [image],
  const UserEntity({
    required this.image,
    required this.firstName,
    required this.lastName,
  });

  /// The image of the user.
  final String image;

  /// firstName of the user.
  final String firstName;

  /// lastName of the user.

  final String lastName;

  /// A function that converts a [UserEntity]  to a [UserModel] intance.
  UserModel toModel() {
    return UserModel(
      image: image,
      firstName: firstName,
      lastName: lastName,
    );
  }

  @override
  List<Object?> get props => [
        image,
        firstName,
        lastName,
      ];
}

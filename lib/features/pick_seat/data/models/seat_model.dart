import 'package:json_annotation/json_annotation.dart';
import 'package:pick_a_sit/features/pick_seat/data/models/user_model.dart';
import 'package:pick_a_sit/features/pick_seat/domain/entities/seat_entity.dart';

part 'seat_model.g.dart';

/// [SeatModel] is the model that represents a sit in a bus
/// and it's used to convert the json response to [SeatModel]
/// it's a subclass of [SeatEntity]
@JsonSerializable(
  explicitToJson: true,
)
class SeatModel extends SeatEntity {
  /// Create a [SeatModel] instance with a [number], [price]
  ///  or [user] if provider,
  const SeatModel({
    required int number,
    required double price,
    required String busLine,
    this.userModel,
  }) : super(
          number: number,
          price: price,
          user: userModel,
          busLine: busLine,
        );

  /// A function that converts a json  to a [SeatModel] instance.
  factory SeatModel.fromJson(Map<String, dynamic> json) =>
      _$SeatModelFromJson(json);

  /// user that is sitting in the seat
  @JsonKey(
    name: 'user',
    fromJson: _userModelFromJson,
    toJson: _userModelToJson,
  )
  final UserModel? userModel;

  /// A function that converts this [SeatModel] instance to a json.
  Map<String, dynamic> toJson() => _$SeatModelToJson(this);
}

Map<String, dynamic>? _userModelToJson(UserModel? model) => model?.toJson();
UserModel? _userModelFromJson(Map<String, dynamic>? json) => json == null
    ? null
    : UserModel(
        image: json['image'] as String,
        firstName: json['firstName'] as String,
        lastName: json['lastName'] as String,
      );

import 'package:json_annotation/json_annotation.dart';
import 'package:pick_a_sit/features/pick_seat/domain/entities/bus_line_entity.dart';

part 'bus_line_model.g.dart';

/// [BusLineModel] is the model that represents a BusLine.
/// and it's used to convert the [BusLineEntity] json from
///  the data layer to a [BusLineEntity]
/// it's a subclass of [BusLineEntity]

@JsonSerializable()
class BusLineModel extends BusLineEntity {
  /// Create a [BusLineModel] instance with a [number], [name],
  /// [departure], [gate], and [onTime].
  const BusLineModel({
    required String number,
    required String name,
    required DateTime departure,
    required String gate,
    required bool onTime,
  }) : super(
          number: number,
          name: name,
          departure: departure,
          gate: gate,
          onTime: onTime,
        );

  /// A function that converts a json  to a [BusLineModel] instance.
  factory BusLineModel.fromJson(Map<String, dynamic> json) =>
      _$BusLineModelFromJson(json);

  /// A function that converts this [BusLineModel] instance to a json.
  Map<String, dynamic> toJson() => _$BusLineModelToJson(this);
}

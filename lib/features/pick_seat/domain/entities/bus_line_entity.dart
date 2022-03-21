import 'package:equatable/equatable.dart';

/// [BusLineEntity] is the entity that represents a BusLine.
class BusLineEntity extends Equatable {
  /// Create a [BusLineEntity] instance with a [number], [name],
  ///  [departure], [gate], and [onTime].
  const BusLineEntity({
    required this.number,
    required this.name,
    required this.departure,
    required this.gate,
    required this.onTime,
  });

  /// The number of the bus line.
  final String number;

  /// The name of the bus line.
  final String name;

  /// The departure time of the bus line.
  final DateTime departure;

  /// The gate of the bus line.
  final String gate;

  /// Whether the bus line is on time.
  final bool onTime;

  @override
  List<Object?> get props => [
        number,
        name,
        departure,
        gate,
        onTime,
      ];
}

import 'package:equatable/equatable.dart';
import 'package:pick_a_sit/features/pick_seat/domain/entities/user_entity.dart';

/// [SeatEntity] is the entity that represents a sit in a bus
class SeatEntity extends Equatable {
  /// Create a [SeatEntity] instance with a [number], [price],
  const SeatEntity({
    required this.number,
    required this.price,
    required this.busLine,
    this.user,
  });

  /// The number of the seat.
  final int number;

  /// the busline the owns this seat
  final String busLine;

  /// The price of the seat.
  final double price;

  /// The user that is sitting in the seat.
  final UserEntity? user;
  @override
  List<Object?> get props => [
        number,
        price,
        user,
        busLine,
      ];
}

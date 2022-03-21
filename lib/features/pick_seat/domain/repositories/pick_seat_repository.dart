import 'package:dartz/dartz.dart';
import 'package:pick_a_sit/core/errors/failure.dart';
import 'package:pick_a_sit/features/pick_seat/domain/entities/bus_line_entity.dart';
import 'package:pick_a_sit/features/pick_seat/domain/entities/seat_entity.dart';
import 'package:pick_a_sit/features/pick_seat/domain/entities/user_entity.dart';

/// [PickSeatRepository] is the interface that provides  access
///  to the data layer
abstract class PickSeatRepository {
  /// [getBusLines] returns a list of bus lines
  Future<Either<Failure, List<BusLineEntity>>> getBusLines();

  /// [getSeats] returns a list of seats avaiable in a bus line
  Future<Either<Failure, List<SeatEntity>>> getSeats(
    /// the bus line you want to get the seats from
    String busLine,
  );

  /// [getSeats] returns a list of seats avaiable in a bus line
  Future<Either<Failure, bool>> book(
    /// the bus line you want to book
    String busLine,

    /// the seat you want to book in the bus
    int seatNumber,

    /// the user that is booking the seat
    UserEntity userEntity,
  );
}

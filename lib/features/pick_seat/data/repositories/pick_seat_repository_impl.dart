import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:pick_a_sit/core/errors/error.dart';
import 'package:pick_a_sit/core/errors/failure.dart';
import 'package:pick_a_sit/features/pick_seat/data/datasources/pick_seat_remote_data_source.dart';
import 'package:pick_a_sit/features/pick_seat/domain/entities/bus_line_entity.dart';
import 'package:pick_a_sit/features/pick_seat/domain/entities/seat_entity.dart';
import 'package:pick_a_sit/features/pick_seat/domain/entities/user_entity.dart';
import 'package:pick_a_sit/features/pick_seat/domain/repositories/pick_seat_repository.dart';

/// this is the implementation of the [PickSeatRepository]
@LazySingleton(as: PickSeatRepository)
class PickSeatRepositoryImpl implements PickSeatRepository {
  /// [PickSeatRepositoryImpl] constructor
  PickSeatRepositoryImpl(this.pickSeatRemoteDataSource);

  /// [PickSeatRemoteDataSource] is the remote data source
  /// that is responsible for retrieving/sending data
  /// from/to the remote server
  final PickSeatRemoteDataSource pickSeatRemoteDataSource;
  @override
  Future<Either<Failure, bool>> book(
    String busLine,
    int seatNumber,
    UserEntity userEntity,
  ) async {
    try {
      final isBooked = await pickSeatRemoteDataSource.book(
        busLine,
        seatNumber,
        userEntity.toModel(),
      );
      return Right(isBooked);
    } catch (e) {
      if (e is PickASitException) {
        return Left(
          e.map(
            server: (exception) => Failure.serverError(exception.message),
            noInternet: (exception) => const Failure.noInternet(),
            unknown: (exception) => const Failure.unknown(),
          ),
        );
      }
      return const Left(Failure.unknown());
    }
  }

  @override
  Future<Either<Failure, List<BusLineEntity>>> getBusLines() async {
    try {
      final busLines = await pickSeatRemoteDataSource.getBusLines();
      return Right(busLines);
    } catch (e) {
      if (e is PickASitException) {
        return Left(
          e.map(
            server: (exception) => Failure.serverError(exception.message),
            noInternet: (exception) => const Failure.noInternet(),
            unknown: (exception) => const Failure.unknown(),
          ),
        );
      }
      return const Left(Failure.unknown());
    }
  }

  @override
  Future<Either<Failure, List<SeatEntity>>> getSeats(String busLine) async {
    try {
      final seats = await pickSeatRemoteDataSource.getSeats(busLine);
      return Right(seats);
    } catch (e) {
      if (e is PickASitException) {
        return Left(
          e.map(
            server: (exception) => Failure.serverError(exception.message),
            noInternet: (exception) => const Failure.noInternet(),
            unknown: (exception) => const Failure.unknown(),
          ),
        );
      }
      return const Left(Failure.unknown());
    }
  }
}

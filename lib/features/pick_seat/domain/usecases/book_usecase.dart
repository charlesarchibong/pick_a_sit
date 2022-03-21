import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:pick_a_sit/core/errors/failure.dart';
import 'package:pick_a_sit/core/usecase/usecase.dart';
import 'package:pick_a_sit/features/pick_seat/domain/entities/user_entity.dart';
import 'package:pick_a_sit/features/pick_seat/domain/repositories/pick_seat_repository.dart';

/// [BookUsecase] is the usecase that is
/// responsible for booking a seat
/// from the remote server
@lazySingleton
class BookUsecase implements UseCase<bool, BookUsecaseParams> {
  /// [BookUsecase] constructor
  const BookUsecase(this.pickSeatRepository);

  /// [pickSeatRepository] is the repository that is responsible for retrieving/sending data
  /// from/to the remote server
  final PickSeatRepository pickSeatRepository;
  @override
  Future<Either<Failure, bool>> call(BookUsecaseParams params) {
    return pickSeatRepository.book(
      params.busLine,
      params.seatNumber,
      params.userEntity,
    );
  }
}

///[BookUsecaseParams] is the type of the parameter that the usecase needs
class BookUsecaseParams extends Equatable {
  /// [BookUsecaseParams] constructor with a [userEntity]
  /// and a [busLine]
  /// and a [seatNumber]
  const BookUsecaseParams({
    required this.busLine,
    required this.seatNumber,
    required this.userEntity,
  });

  /// the bus line you want to book
  final String busLine;

  /// the seat you want to book in the bus
  final int seatNumber;

  /// the user that is booking the seat
  final UserEntity userEntity;
  @override
  List<Object?> get props => [busLine, seatNumber, userEntity];
}

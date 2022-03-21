import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:pick_a_sit/core/errors/failure.dart';
import 'package:pick_a_sit/core/usecase/usecase.dart';
import 'package:pick_a_sit/features/pick_seat/domain/entities/seat_entity.dart';
import 'package:pick_a_sit/features/pick_seat/domain/repositories/pick_seat_repository.dart';

/// [GetSeatsUsecase] is the usecase that is
/// responsible for retrieving the seats
/// from the remote server
@lazySingleton
class GetSeatsUsecase
    implements UseCase<List<SeatEntity>, GetSeatsUsecaseParam> {
  /// [GetSeatsUsecase] constructor
  GetSeatsUsecase(this.pickSeatRepository);

  /// [pickSeatRepository] is the repository that is responsible for retrieving/sending data
  /// from/to the remote server
  /// and is injected by the [GetSeatsUsecase]
  final PickSeatRepository pickSeatRepository;
  @override
  Future<Either<Failure, List<SeatEntity>>> call(GetSeatsUsecaseParam params) {
    return pickSeatRepository.getSeats(params.busLine);
  }
}

///[GetSeatsUsecaseParam] is the type of the parameter that the usecase needs
class GetSeatsUsecaseParam extends Equatable {
  /// [GetSeatsUsecaseParam] constructor with a [busLine]
  const GetSeatsUsecaseParam(this.busLine);

  /// the bus line you want to get the seats from
  final String busLine;

  @override
  List<Object> get props => [busLine];
}

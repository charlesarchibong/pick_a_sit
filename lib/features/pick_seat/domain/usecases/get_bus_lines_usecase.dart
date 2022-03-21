import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:pick_a_sit/core/errors/failure.dart';
import 'package:pick_a_sit/core/usecase/usecase.dart';
import 'package:pick_a_sit/features/pick_seat/domain/entities/bus_line_entity.dart';
import 'package:pick_a_sit/features/pick_seat/domain/repositories/pick_seat_repository.dart';

///[GetBusLinesUsecase] is the usecase that is
/// responsible for retrieving the bus lines
/// from the remote server

@lazySingleton
class GetBusLinesUsecase implements UseCase<List<BusLineEntity>, NoParams> {
  /// [GetBusLinesUsecase] constructor
  GetBusLinesUsecase(this.pickSeatRepository);

  /// [pickSeatRepository] is the repository that is responsible for retrieving/sending data
  /// from/to the remote server
  /// and is injected by the [GetBusLinesUsecase]
  final PickSeatRepository pickSeatRepository;

  @override
  Future<Either<Failure, List<BusLineEntity>>> call(NoParams params) {
    return pickSeatRepository.getBusLines();
  }
}

import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:pick_a_sit/core/errors/failure.dart';
import 'package:pick_a_sit/core/usecase/usecase.dart';
import 'package:pick_a_sit/features/pick_seat/domain/usecases/get_bus_lines_usecase.dart';
import 'package:pick_a_sit/features/pick_seat/presentation/cubit/pick_sit_state.dart';

/// [PickSitCubit] is the [Cubit] that controls the [PickSitState].
@lazySingleton
class PickSitCubit extends Cubit<PickSitState> {
  /// Create a [PickSitCubit] with a [PickSitState] of [ PickSitState.initial().
  PickSitCubit(
    this.getBusLinesUsecase,
  ) : super(const PickSitState.initial());

  /// [GetBusLinesUsecase] is the usecase that is responsible for retrieving
  ///  the bus lines
  /// from the remote server
  /// and is injected by the [PickSitCubit]
  final GetBusLinesUsecase getBusLinesUsecase;

  /// [getBusLines] is the function that is responsible for retrieving
  Future<void> getBusLines() async {
    emit(const PickSitState.loading());
    final result = await getBusLinesUsecase(NoParams());
    result.fold(
      (l) => emit(PickSitState.error(ConvertFailureToString()(l))),
      (r) => emit(PickSitState.loaded(r)),
    );
  }
}

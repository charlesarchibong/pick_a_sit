import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pick_a_sit/features/pick_seat/domain/entities/bus_line_entity.dart';
import 'package:pick_a_sit/features/pick_seat/presentation/cubit/pick_sit_cubit.dart';

part 'pick_sit_state.freezed.dart';

@freezed

/// [PickSitState] is the state of the [PickSitCubit].
class PickSitState with _$PickSitState {
  /// Create a [PickSitState] with a [PickSitState] of [PickSitState.initial()]
  const factory PickSitState.initial() = _$InitialPickSitState;

  /// Create a [PickSitState.loading] with a [PickSitState]
  const factory PickSitState.loading() = _$LoadingPickSitState;

  /// Create a [PickSitState.error] with a [PickSitState]
  const factory PickSitState.error(String message) = _$ErrorPickSitState;

  /// Create a [PickSitState] with a [PickSitState] of
  ///  [PickSitState.loaded()]
  const factory PickSitState.loaded(List<BusLineEntity> buses) =
      _$LoadedPickSitState;
}

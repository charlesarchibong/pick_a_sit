import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pick_a_sit/features/pick_seat/domain/entities/seat_entity.dart';
import 'package:pick_a_sit/features/pick_seat/presentation/cubit/pick_sit_cubit.dart';

part 'book_sit_state.freezed.dart';

@freezed

/// [BookSitState] is the state of the [PickSitCubit].
class BookSitState with _$BookSitState {
  /// Create a [BookSitState.initial] with a [BookSitState]
  const factory BookSitState.initial() = _$InitialBookSitState;

  /// Create a [BookSitState.loading] with a [BookSitState]
  const factory BookSitState.loading() = _$LoadingBookSitState;

  /// Create a [BookSitState.error] with a [BookSitState]
  const factory BookSitState.error(String message) = _$ErrorBookSitState;

  /// Create a [BookSitState.loaded] with a [BookSitState]
  const factory BookSitState.loaded(List<SeatEntity> seats) =
      _$LoadedBookSitState;

  /// Create a [BookSitState.booked] with a [BookSitState]
  const factory BookSitState.booked(String sitNumber) = _$BookedBookSitState;
}

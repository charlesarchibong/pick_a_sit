import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:pick_a_sit/core/errors/failure.dart';
import 'package:pick_a_sit/features/pick_seat/domain/entities/user_entity.dart';
import 'package:pick_a_sit/features/pick_seat/domain/usecases/book_usecase.dart';
import 'package:pick_a_sit/features/pick_seat/domain/usecases/get_seats_usecase.dart';
import 'package:pick_a_sit/features/pick_seat/presentation/cubit/book_sit_state.dart';

/// [BookSitCubit] is the [Cubit] that controls the [BookSitState].
@lazySingleton
class BookSitCubit extends Cubit<BookSitState> {
  /// Create a [BookSitCubit] with a [BookSitState] of [ BookSitState.initial].
  BookSitCubit({
    required this.getSeatsUsecase,
    required this.bookUsecase,
  }) : super(const BookSitState.initial());

  ///[BookUsecase] is the usecase that is responsible for booking
  /// a seat
  final BookUsecase bookUsecase;

  /// [GetSeatsUsecase] is the usecase that is responsible for retrieving
  /// the seats
  final GetSeatsUsecase getSeatsUsecase;

  /// [getSeats] is the function that is responsible for retrieving
  /// the seats
  /// from the remote server
  /// [busLine] is the bus line you want to fetch the seats from
  Future<void> getSeats(String busLine) async {
    emit(const BookSitState.loading());
    final result = await getSeatsUsecase(GetSeatsUsecaseParam(busLine));
    result.fold(
      (l) => emit(BookSitState.error(ConvertFailureToString()(l))),
      (r) => emit(BookSitState.loaded(r)),
    );
  }

  /// [bookSeat] is the function that is responsible for booking
  /// a seat
  /// [userEntity] is the user that is booking the seat
  /// [seatNumber] is the seat that is booked
  /// [busLine] is the bus line that the seat is booked for
  /// when [bookSeat] emit a [BookSitState.booked] state please call [getSeats]
  /// to fetch the seats again and refresh the page
  Future<bool> bookSeat(
    String busLine,
    int seatNumber,
    UserEntity userEntity,
  ) async {
    emit(const BookSitState.loading());
    final result = await bookUsecase(
      BookUsecaseParams(
        busLine: busLine,
        seatNumber: seatNumber,
        userEntity: userEntity,
      ),
    );
    result.fold(
      (l) => emit(BookSitState.error(ConvertFailureToString()(l))),
      (r) => emit(BookSitState.booked(seatNumber.toString())),
    );
    return result.isRight();
  }
}

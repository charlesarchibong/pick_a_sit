import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:pick_a_sit/core/errors/failure.dart';
import 'package:pick_a_sit/features/pick_seat/domain/entities/seat_entity.dart';
import 'package:pick_a_sit/features/pick_seat/domain/entities/user_entity.dart';
import 'package:pick_a_sit/features/pick_seat/domain/repositories/pick_seat_repository.dart';
import 'package:pick_a_sit/features/pick_seat/domain/usecases/book_usecase.dart';
import 'package:pick_a_sit/features/pick_seat/domain/usecases/get_seats_usecase.dart';
import 'package:pick_a_sit/features/pick_seat/presentation/cubit/book_sit_cubit.dart';
import 'package:pick_a_sit/features/pick_seat/presentation/cubit/book_sit_state.dart';

import 'pick_sit_state_test.mocks.dart';

@GenerateMocks([PickSeatRepository])
void main() {
  late BookSitCubit bookSitCubit;
  late MockPickSeatRepository mockPickSeatRepository;
  late BookUsecase bookUsecase;
  late GetSeatsUsecase getSeatsUsecase;

  setUp(() {
    mockPickSeatRepository = MockPickSeatRepository();
    bookUsecase = BookUsecase(mockPickSeatRepository);
    getSeatsUsecase = GetSeatsUsecase(mockPickSeatRepository);
    bookSitCubit = BookSitCubit(
      bookUsecase: bookUsecase,
      getSeatsUsecase: getSeatsUsecase,
    );
  });

  group('getSeats', () {
    final tBusSeatEntities = [
      const SeatEntity(
        number: 1,
        price: 3.5,
        busLine: '1',
      )
    ];
    test('should return initial state', () {
      expect(
        bookSitCubit.state,
        const BookSitState.initial(),
      );
    });

    blocTest(
      'should emit [BookSitState.loading] and [BookSitState.loaded]',
      build: () => bookSitCubit,
      setUp: () {
        when(mockPickSeatRepository.getSeats(any)).thenAnswer(
          (_) => Future.value(
            Right(tBusSeatEntities),
          ),
        );
      },
      act: (BookSitCubit cubit) => cubit.getSeats('1'),
      expect: () => [
        const BookSitState.loading(),
        BookSitState.loaded(tBusSeatEntities),
      ],
    );

    blocTest(
      'should emit [BookSitState.error]',
      build: () => bookSitCubit,
      setUp: () {
        when(mockPickSeatRepository.getSeats(any)).thenAnswer(
          (_) => Future.value(
            const Left(Failure.noInternet()),
          ),
        );
      },
      act: (BookSitCubit cubit) => cubit.getSeats('1'),
      expect: () => [
        const BookSitState.loading(),
        BookSitState.error(
          ConvertFailureToString()(
            const Failure.noInternet(),
          ),
        ),
      ],
    );
  });

  group('bookSeat', () {
    test('should return initial state', () {
      expect(
        bookSitCubit.state,
        const BookSitState.initial(),
      );
    });

    blocTest(
      'should emit [BookSitState.loading] and [BookSitState.booked]',
      build: () => bookSitCubit,
      setUp: () {
        when(mockPickSeatRepository.book(any, any, any)).thenAnswer(
          (_) => Future.value(
            const Right(true),
          ),
        );
      },
      act: (BookSitCubit cubit) => cubit.bookSeat(
        '1',
        3,
        const UserEntity(
          image: 'assets/images/ellipse.png',
          firstName: 'Charles',
          lastName: 'Babbage',
        ),
      ),
      expect: () => [
        const BookSitState.loading(),
        const BookSitState.booked('3'),
      ],
    );

    blocTest(
      'should emit [BookSitState.error]',
      build: () => bookSitCubit,
      setUp: () {
        when(mockPickSeatRepository.book(any, any, any)).thenAnswer(
          (_) => Future.value(
            const Left(Failure.noInternet()),
          ),
        );
      },
      act: (BookSitCubit cubit) => cubit.bookSeat(
        '1',
        3,
        const UserEntity(
          image: 'assets/images/ellipse.png',
          firstName: 'Charles',
          lastName: 'Babbage',
        ),
      ),
      expect: () => [
        const BookSitState.loading(),
        BookSitState.error(
          ConvertFailureToString()(
            const Failure.noInternet(),
          ),
        ),
      ],
    );
  });
}

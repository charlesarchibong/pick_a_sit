import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:pick_a_sit/features/pick_seat/domain/entities/user_entity.dart';
import 'package:pick_a_sit/features/pick_seat/domain/repositories/pick_seat_repository.dart';
import 'package:pick_a_sit/features/pick_seat/domain/usecases/book_usecase.dart';

import 'book_usecase_test.mocks.dart';

@GenerateMocks([BookUsecase, PickSeatRepository])
void main() {
  late MockPickSeatRepository mockPickSeatRepository;
  late BookUsecase bookUsecase;
  late UserEntity userEntity;

  setUp(() {
    mockPickSeatRepository = MockPickSeatRepository();
    bookUsecase = BookUsecase(mockPickSeatRepository);
    userEntity = const UserEntity(
      firstName: 'Charles',
      lastName: 'Babbage',
      image: 'assets/images/ellipse.png',
    );
  });

  group('book', () {
    test('should return true when all goes well', () async {
      when(
        mockPickSeatRepository.book(any, any, any),
      ).thenAnswer(
        (_) => Future.value(const Right(true)),
      );
      final result = await bookUsecase(
        const BookUsecaseParams(
          busLine: '1',
          seatNumber: 2,
          userEntity: UserEntity(
            firstName: 'Charles',
            lastName: 'Babbage',
            image: 'assets/images/ellipse.png',
          ),
        ),
      );
      verify(mockPickSeatRepository.book(any, any, any));

      expect(
        result,
        const Right(true),
      );
      verifyNoMoreInteractions(mockPickSeatRepository);
    });

    test('should return false is something goes wrong', () async {
      when(
        mockPickSeatRepository.book(any, any, any),
      ).thenAnswer(
        (_) => Future.value(const Right(false)),
      );
      final result = await bookUsecase(
        BookUsecaseParams(
          busLine: '1',
          seatNumber: 2,
          userEntity: userEntity,
        ),
      );
      verify(mockPickSeatRepository.book(any, any, any));
      expect(
        result,
        const Right(false),
      );
      verifyNoMoreInteractions(mockPickSeatRepository);
    });
  });
}

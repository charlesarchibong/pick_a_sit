import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:pick_a_sit/core/errors/failure.dart';
import 'package:pick_a_sit/features/pick_seat/data/datasources/fixture.dart';
import 'package:pick_a_sit/features/pick_seat/data/models/seat_model.dart';
import 'package:pick_a_sit/features/pick_seat/domain/repositories/pick_seat_repository.dart';
import 'package:pick_a_sit/features/pick_seat/domain/usecases/get_seats_usecase.dart';

import 'get_seats_usecase_test.mocks.dart';

@GenerateMocks([PickSeatRepository])
void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  late MockPickSeatRepository mockPickSeatRepository;
  late GetSeatsUsecase getSeatsUsecase;

  setUp(() {
    mockPickSeatRepository = MockPickSeatRepository();
    getSeatsUsecase = GetSeatsUsecase(mockPickSeatRepository);
  });

  group('getSeats', () {
    test('should return seats when all goes well', () async {
      final jsonMap =
          json.decode(await fixture('seat.json')) as Map<String, dynamic>;

      final list = (jsonMap['1'] as List).map((e) {
        return SeatModel.fromJson(e);
      }).toList();

      when(
        mockPickSeatRepository.getSeats('1'),
      ).thenAnswer(
        (_) => Future.value(Right(list)),
      );
      final result = await getSeatsUsecase(
        const GetSeatsUsecaseParam(
          '1',
        ),
      );
      verify(mockPickSeatRepository.getSeats(any));

      expect(
        result,
        Right(list),
      );
      verifyNoMoreInteractions(mockPickSeatRepository);
    });

    test('should return error when something goes wrong', () async {
      when(
        mockPickSeatRepository.getSeats(any),
      ).thenAnswer(
        (_) => Future.value(const Left(Failure.noInternet())),
      );
      final result = await getSeatsUsecase(
        const GetSeatsUsecaseParam(
          '1',
        ),
      );
      verify(mockPickSeatRepository.getSeats(any));

      expect(
        result,
        const Left(Failure.noInternet()),
      );
      verifyNoMoreInteractions(mockPickSeatRepository);
    });
  });
}

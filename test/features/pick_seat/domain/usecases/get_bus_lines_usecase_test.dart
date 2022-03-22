import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:pick_a_sit/core/errors/failure.dart';
import 'package:pick_a_sit/core/usecase/usecase.dart';
import 'package:pick_a_sit/features/pick_seat/data/datasources/fixture.dart';
import 'package:pick_a_sit/features/pick_seat/data/models/bus_line_model.dart';
import 'package:pick_a_sit/features/pick_seat/domain/entities/bus_line_entity.dart';
import 'package:pick_a_sit/features/pick_seat/domain/repositories/pick_seat_repository.dart';
import 'package:pick_a_sit/features/pick_seat/domain/usecases/get_bus_lines_usecase.dart';

import 'get_bus_lines_usecase_test.mocks.dart';

@GenerateMocks([PickSeatRepository])
void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  late MockPickSeatRepository mockPickSeatRepository;
  late GetBusLinesUsecase getBusLinesUsecase;
  late List<BusLineEntity> busLineEntities;

  setUp(() async {
    mockPickSeatRepository = MockPickSeatRepository();
    getBusLinesUsecase = GetBusLinesUsecase(mockPickSeatRepository);
    final jsonMap =
        json.decode(await fixture('bus_lines.json')) as Map<String, dynamic>;

    final list = jsonMap['lines'] as List;
    busLineEntities = list
        .map((e) => BusLineModel.fromJson(e as Map<String, dynamic>))
        .toList();
  });

  group('getBusLines', () {
    test('should return a list of bus lines', () async {
      when(
        mockPickSeatRepository.getBusLines(),
      ).thenAnswer(
        (_) => Future.value(Right(busLineEntities)),
      );
      final result = await getBusLinesUsecase(
        NoParams(),
      );
      verify(mockPickSeatRepository.getBusLines());

      expect(
        result,
        Right(busLineEntities),
      );
      verifyNoMoreInteractions(mockPickSeatRepository);
    });

    test('should return a error', () async {
      when(
        mockPickSeatRepository.getBusLines(),
      ).thenAnswer(
        (_) => Future.value(const Left(Failure.noInternet())),
      );
      final result = await getBusLinesUsecase(
        NoParams(),
      );
      verify(mockPickSeatRepository.getBusLines());

      expect(
        result,
        const Left(Failure.noInternet()),
      );
      verifyNoMoreInteractions(mockPickSeatRepository);
    });
  });
}

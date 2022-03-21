import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:pick_a_sit/core/errors/failure.dart';
import 'package:pick_a_sit/core/usecase/usecase.dart';
import 'package:pick_a_sit/features/pick_seat/domain/entities/bus_line_entity.dart';
import 'package:pick_a_sit/features/pick_seat/domain/repositories/pick_seat_repository.dart';
import 'package:pick_a_sit/features/pick_seat/domain/usecases/get_bus_lines_usecase.dart';
import 'package:pick_a_sit/features/pick_seat/presentation/cubit/pick_sit_cubit.dart';
import 'package:pick_a_sit/features/pick_seat/presentation/cubit/pick_sit_state.dart';

import 'pick_sit_state_test.mocks.dart';

@GenerateMocks([PickSeatRepository])
void main() {
  late PickSitCubit pickSeatCubit;
  late MockPickSeatRepository mockPickSeatRepository;
  late GetBusLinesUsecase getBusLinesUsecase;

  setUp(() {
    mockPickSeatRepository = MockPickSeatRepository();
    getBusLinesUsecase = GetBusLinesUsecase(mockPickSeatRepository);
    pickSeatCubit = PickSitCubit(getBusLinesUsecase);
  });
  group('state', () {
    test('initial state is correct', () {
      expect(pickSeatCubit.state, const PickSitState.initial());
    });

    final tBusLinesEntity = [
      BusLineEntity(
        number: '2',
        name: 'name',
        departure: DateTime.now(),
        gate: '12',
        onTime: true,
      ),
    ];

    blocTest(
      'emit [PickSitState.loading] and [PickSitState.loaded]',
      build: () => pickSeatCubit,
      setUp: () {
        when(mockPickSeatRepository.getBusLines()).thenAnswer(
          (_) => Future.value(
            Right(tBusLinesEntity),
          ),
        );
      },
      act: (PickSitCubit cubit) => cubit.getBusLines(),
      expect: () => [
        const PickSitState.loading(),
        PickSitState.loaded(tBusLinesEntity),
      ],
      verify: (_) {
        verify(getBusLinesUsecase.call(NoParams())).called(1);
        verifyNoMoreInteractions(mockPickSeatRepository);
      },
    );

    blocTest(
      'emit [PickSitState.error]',
      build: () => pickSeatCubit,
      setUp: () {
        when(mockPickSeatRepository.getBusLines()).thenAnswer(
          (_) => Future.value(
            const Left(Failure.noInternet()),
          ),
        );
      },
      act: (PickSitCubit cubit) => cubit.getBusLines(),
      expect: () => [
        const PickSitState.loading(),
        PickSitState.error(
          ConvertFailureToString()(
            const Failure.noInternet(),
          ),
        ),
      ],
      verify: (_) {
        verify(getBusLinesUsecase.call(NoParams())).called(1);
        verifyNoMoreInteractions(mockPickSeatRepository);
      },
    );
  });
}

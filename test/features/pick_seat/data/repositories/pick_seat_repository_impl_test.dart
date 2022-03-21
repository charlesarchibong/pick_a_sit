import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:pick_a_sit/core/errors/error.dart';
import 'package:pick_a_sit/core/errors/failure.dart';
import 'package:pick_a_sit/core/network/network_info.dart';
import 'package:pick_a_sit/features/pick_seat/data/datasources/pick_seat_remote_data_source.dart';
import 'package:pick_a_sit/features/pick_seat/data/models/bus_line_model.dart';
import 'package:pick_a_sit/features/pick_seat/data/models/seat_model.dart';
import 'package:pick_a_sit/features/pick_seat/data/repositories/pick_seat_repository_impl.dart';
import 'package:pick_a_sit/features/pick_seat/domain/entities/user_entity.dart';

import 'pick_seat_repository_impl_test.mocks.dart';

@GenerateMocks([PickSeatRemoteDataSource, NetworkInfo])
void main() {
  late MockPickSeatRemoteDataSource mockPickSeatRemoteDataSource;
  late MockNetworkInfo mockNetworkInfo;
  late PickSeatRepositoryImpl pickSeatRepositoryImpl;

  setUp(() {
    mockPickSeatRemoteDataSource = MockPickSeatRemoteDataSource();
    mockNetworkInfo = MockNetworkInfo();
    pickSeatRepositoryImpl =
        PickSeatRepositoryImpl(mockPickSeatRemoteDataSource);
  });

  group('book', () {
    test('should return true when booking is completed', () async {
      when(mockPickSeatRemoteDataSource.book(any, any, any))
          .thenAnswer((_) => Future.value(true));

      final result = await pickSeatRepositoryImpl.book(
        '1',
        2,
        const UserEntity(
          firstName: 'Charles',
          lastName: 'Babbage',
          image: 'assets/images/ellipse.png',
        ),
      );

      verify(mockPickSeatRemoteDataSource.book(any, any, any));
      verifyNever(mockNetworkInfo.isConnected);

      expect(result, const Right(true));
      verifyNoMoreInteractions(mockPickSeatRemoteDataSource);
      verifyNoMoreInteractions(mockNetworkInfo);
    });

    test('should return [Failure.noInternet] when there is no internet',
        () async {
      when(mockPickSeatRemoteDataSource.book(any, any, any))
          .thenThrow(const PickASitException.noInternet());
      final result = await pickSeatRepositoryImpl.book(
        '1',
        2,
        const UserEntity(
          firstName: 'Charles',
          lastName: 'Babbage',
          image: 'assets/images/ellipse.png',
        ),
      );

      verify(mockPickSeatRemoteDataSource.book(any, any, any));
      verifyNever(mockNetworkInfo.isConnected);
      expect(result, const Left(Failure.noInternet()));
      verifyNoMoreInteractions(mockPickSeatRemoteDataSource);
      verifyNoMoreInteractions(mockNetworkInfo);
    });
  });

  group('getSeats', () {
    const tSeats = [
      SeatModel(number: 1, price: 34.3, busLine: '2'),
      SeatModel(number: 2, price: 34.3, busLine: '2'),
      SeatModel(number: 3, price: 34.3, busLine: '2'),
    ];
    test('should get seats from the provided busLine', () async {
      when(mockPickSeatRemoteDataSource.getSeats(any)).thenAnswer(
        (_) => Future.value(tSeats),
      );

      final result = await pickSeatRepositoryImpl.getSeats('1');

      expect(result, const Right(tSeats));
      verify(mockPickSeatRemoteDataSource.getSeats(any));
      verifyNever(mockNetworkInfo.isConnected);
      verifyNoMoreInteractions(mockPickSeatRemoteDataSource);
      verifyNoMoreInteractions(mockNetworkInfo);
    });
    test('should return [Failure.noInternet] when there is no internet',
        () async {
      when(mockPickSeatRemoteDataSource.getSeats(any))
          .thenThrow(const PickASitException.noInternet());
      final result = await pickSeatRepositoryImpl.getSeats('1');

      verify(mockPickSeatRemoteDataSource.getSeats(any));
      verifyNever(mockNetworkInfo.isConnected);
      expect(result, const Left(Failure.noInternet()));
      verifyNoMoreInteractions(mockPickSeatRemoteDataSource);
      verifyNoMoreInteractions(mockNetworkInfo);
    });
  });

  group('getBusLines', () {
    final tBusLines = [
      BusLineModel(
        number: '1',
        name: 'Bus',
        departure: DateTime.now(),
        gate: '34',
        onTime: true,
      ),
      BusLineModel(
        number: '2',
        name: 'Bus',
        departure: DateTime.now(),
        gate: '34',
        onTime: true,
      ),
    ];
    test('should get bus lines from the provided busLine', () async {
      when(mockPickSeatRemoteDataSource.getBusLines()).thenAnswer(
        (_) => Future.value(tBusLines),
      );

      final result = await pickSeatRepositoryImpl.getBusLines();

      expect(result, Right(tBusLines));
      verify(mockPickSeatRemoteDataSource.getBusLines());
      verifyNever(mockNetworkInfo.isConnected);
      verifyNoMoreInteractions(mockPickSeatRemoteDataSource);
      verifyNoMoreInteractions(mockNetworkInfo);
    });
    test('should return [Failure.noInternet] when there is no internet',
        () async {
      when(mockPickSeatRemoteDataSource.getBusLines())
          .thenThrow(const PickASitException.noInternet());
      final result = await pickSeatRepositoryImpl.getBusLines();

      verify(mockPickSeatRemoteDataSource.getBusLines());
      verifyNever(mockNetworkInfo.isConnected);
      expect(result, const Left(Failure.noInternet()));
      verifyNoMoreInteractions(mockPickSeatRemoteDataSource);
      verifyNoMoreInteractions(mockNetworkInfo);
    });
  });
}

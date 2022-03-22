import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:pick_a_sit/core/errors/error.dart';
import 'package:pick_a_sit/core/network/network_info.dart';
import 'package:pick_a_sit/features/pick_seat/data/datasources/pick_seat_remote_data_source.dart';
import 'package:pick_a_sit/features/pick_seat/data/models/bus_line_model.dart';
import 'package:pick_a_sit/features/pick_seat/data/models/seat_model.dart';
import 'package:pick_a_sit/features/pick_seat/data/models/user_model.dart';

import 'pick_seat_remote_data_source_test.mocks.dart';

@GenerateMocks([NetworkInfo])
void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  late MockNetworkInfo mockNetworkInfo;
  late PickSeatRemoteDataSourceImpl pickSeatRemoteDataSourceImpl;

  setUp(() {
    mockNetworkInfo = MockNetworkInfo();
    pickSeatRemoteDataSourceImpl =
        PickSeatRemoteDataSourceImpl(mockNetworkInfo);
  });

  group('book', () {
    test('should return true when seat is successfully booked', () async {
      when(mockNetworkInfo.isConnected).thenAnswer((_) => Future.value(true));

      final result = await pickSeatRemoteDataSourceImpl.book(
        '1',
        2,
        const UserModel(
          firstName: 'Charles',
          lastName: 'Babbage',
          image: 'assets/images/ellipse.png',
        ),
      );
      expect(result, true);
      verify(mockNetworkInfo.isConnected);
      verifyNoMoreInteractions(mockNetworkInfo);
    });

    test(
        '''should validate the NoInternetException is '''
        '''thrown when there is no internet''', () async {
      when(mockNetworkInfo.isConnected).thenAnswer((_) => Future.value(false));

      final call = pickSeatRemoteDataSourceImpl.book;
      expect(
        () => call(
          '1',
          2,
          const UserModel(
            firstName: 'Charles',
            lastName: 'Babbage',
            image: 'assets/images/ellipse.png',
          ),
        ),
        throwsA(
          const TypeMatcher<PickASitException>(),
        ),
      );
      verify(mockNetworkInfo.isConnected);
      verifyNoMoreInteractions(mockNetworkInfo);
    });
  });

  group('getSeats', () {
    test('should return a list of seats when there is internet', () async {
      when(mockNetworkInfo.isConnected).thenAnswer((_) => Future.value(true));

      final result = await pickSeatRemoteDataSourceImpl.getSeats(
        '1',
      );
      expect(result, isA<List<SeatModel>>());
      verify(mockNetworkInfo.isConnected);
      verifyNoMoreInteractions(mockNetworkInfo);
    });

    test(
        '''should validate the NoInternetException is '''
        '''thrown when there is no internet''', () async {
      when(mockNetworkInfo.isConnected).thenAnswer((_) => Future.value(false));

      final call = pickSeatRemoteDataSourceImpl.getSeats;
      expect(
        () => call(
          '1',
        ),
        throwsA(
          const TypeMatcher<PickASitException>(),
        ),
      );
      verify(mockNetworkInfo.isConnected);
      verifyNoMoreInteractions(mockNetworkInfo);
    });
  });

  group('getBusLines', () {
    test('should return a list of bus lines when there is internet', () async {
      when(mockNetworkInfo.isConnected).thenAnswer((_) => Future.value(true));

      final result = await pickSeatRemoteDataSourceImpl.getBusLines();
      expect(result, isA<List<BusLineModel>>());
      verify(mockNetworkInfo.isConnected);
      verifyNoMoreInteractions(mockNetworkInfo);
    });

    test(
        '''should validate the NoInternetException is '''
        '''thrown when there is no internet''', () async {
      when(mockNetworkInfo.isConnected).thenAnswer((_) => Future.value(false));

      final call = pickSeatRemoteDataSourceImpl.getBusLines;
      expect(
        call,
        throwsA(
          const TypeMatcher<PickASitException>(),
        ),
      );
      verify(mockNetworkInfo.isConnected);
      verifyNoMoreInteractions(mockNetworkInfo);
    });
  });
}

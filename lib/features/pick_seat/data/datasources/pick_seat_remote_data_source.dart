import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:pick_a_sit/core/errors/error.dart';
import 'package:pick_a_sit/core/network/network_info.dart';
import 'package:pick_a_sit/features/pick_seat/data/datasources/fixture.dart';
import 'package:pick_a_sit/features/pick_seat/data/models/bus_line_model.dart';
import 'package:pick_a_sit/features/pick_seat/data/models/seat_model.dart';
import 'package:pick_a_sit/features/pick_seat/data/models/user_model.dart';

/// [PickSeatRemoteDataSource] is responsible for retrieving/sending data
///  from/to the remote server.
abstract class PickSeatRemoteDataSource {
  /// [getBusLines] returns a list of bus lines
  Future<List<BusLineModel>> getBusLines();

  /// [getSeats] returns a list of seats avaiable in a bus line
  Future<List<SeatModel>> getSeats(
    /// the bus line you want to get the seats from
    String busLine,
  );

  /// [book] returns a list of seats avaiable in a bus line
  Future<bool> book(
    /// the bus line you want to book
    String busLine,

    /// the seat you want to book in the bus
    int seatNumber,

    /// the user that is booking the seat
    UserModel userEntity,
  );
}

/// [PickSeatRemoteDataSourceImpl] implements [PickSeatRemoteDataSource]
/// and is responsible for implementing the logics to retrieving/sending data
@LazySingleton(as: PickSeatRemoteDataSource)
class PickSeatRemoteDataSourceImpl implements PickSeatRemoteDataSource {
  /// [PickSeatRemoteDataSourceImpl] constructor
  PickSeatRemoteDataSourceImpl(this.networkInfo);

  /// [networkInfo] is the network information
  /// that is responsible for checking if the device
  /// is connected to the internet
  /// and returning the status of internet connection if is true/false
  final NetworkInfo networkInfo;
  @override
  Future<bool> book(
    String busLine,
    int seatNumber,
    UserModel userEntity,
  ) async {
    if (await networkInfo.isConnected) {
      return Future.delayed(
        const Duration(seconds: 1),
        () => true,
      );
    } else {
      throw const PickASitException.noInternet();
    }
  }

  @override
  Future<List<BusLineModel>> getBusLines() async {
    if (await networkInfo.isConnected) {
      final jsonMap =
          json.decode(await fixture('bus_lines.json')) as Map<String, dynamic>;
      return Future.delayed(const Duration(seconds: 1), () {
        return (jsonMap['lines'] as List).map((e) {
          return BusLineModel.fromJson(e);
        }).toList();
      });
    } else {
      throw const PickASitException.noInternet();
    }
  }

  @override
  Future<List<SeatModel>> getSeats(
    String busLine,
  ) async {
    if (await networkInfo.isConnected) {
      final jsonMap =
          json.decode(await fixture('seat.json')) as Map<String, dynamic>;
      final list = jsonMap[busLine] as List;
      return Future.delayed(
        const Duration(seconds: 1),
        () => list.map((e) {
          return SeatModel.fromJson(e);
        }).toList(),
      );
    } else {
      throw const PickASitException.noInternet();
    }
  }
}

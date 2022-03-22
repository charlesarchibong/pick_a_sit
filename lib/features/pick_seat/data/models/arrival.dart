import 'package:freezed_annotation/freezed_annotation.dart';

part 'arrival.freezed.dart';

/// [ArrivalType] is the class that represents
/// the arrival of the ride
@freezed
class ArrivalType with _$ArrivalType {
  /// [ArrivalType] intime when the ride is in time
  const factory ArrivalType.inTime() = _InTimeArrivalType;

  /// [ArrivalType] pending when the ride is pending
  const factory ArrivalType.pending() = _PendingArrivalType;

  /// [ArrivalType] late when the ride is late
  const factory ArrivalType.late() = _LateArrivalType;
}

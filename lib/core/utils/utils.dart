import 'package:pick_a_sit/features/pick_seat/data/models/arrival.dart';

/// [Utils] is a utility class.
class Utils {
  /// [getArrivalType] returns the arrival type of the ride.
  static ArrivalType getArrivalType(DateTime departure) {
    final timeDifference = DateTime.now().compareTo(departure);
    if (timeDifference < 0) {
      return const ArrivalType.inTime();
    } else if (timeDifference == 0) {
      return const ArrivalType.pending();
    } else {
      return const ArrivalType.late();
    }
  }
}

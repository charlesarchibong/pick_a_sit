import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:pick_a_sit/core/utils/utils.dart';
import 'package:pick_a_sit/features/pick_seat/domain/entities/bus_line_entity.dart';

/// [RideRowWidget] is the class that represents
/// the ride row widget
class RideRowWidget extends StatelessWidget {
  /// [RideRowWidget] constructor
  const RideRowWidget({
    Key? key,
    required this.busLineEntity,
  }) : super(key: key);

  /// [busLineEntity] bus line entity
  final BusLineEntity busLineEntity;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Text(
              busLineEntity.number,
              style: const TextStyle(
                fontSize: 14,
                color: Colors.black,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Text(
              busLineEntity.name,
              style: const TextStyle(
                fontSize: 14,
                color: Colors.black,
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Text(
              DateFormat('KK.mm').format(busLineEntity.departure),
              style: const TextStyle(
                fontSize: 14,
                color: Colors.black,
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Text(
              busLineEntity.gate,
              style: const TextStyle(
                fontSize: 14,
                color: Colors.black,
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Center(
              child: Container(
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                  color: Utils.getArrivalType(busLineEntity.departure).when(
                    inTime: () => const Color(0xff6AAD26),
                    pending: () => const Color(0xffC7AF26),
                    late: () => const Color(0xffC75E26),
                  ),
                  shape: BoxShape.circle,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

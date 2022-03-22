import 'package:flutter/material.dart';
import 'package:pick_a_sit/features/pick_seat/presentation/widgets/select_seat_widget.dart';

///[SeatNumberWidget] is the class that represents
/// the seat number widget
class SeatNumberWidget extends StatelessWidget {
  ///[SeatNumberWidget] constructor
  const SeatNumberWidget({
    Key? key,
    required this.number,
    required this.top,
    required this.right,
  }) : super(key: key);

  ///[number] is the seat number
  final String number;

  ///[top] is the top margin
  final double top;

  ///[right] is the right margin
  final double right;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      right: right,
      child: InkWell(
        onTap: () {
          showDialog(
            context: context,
            barrierColor: Colors.transparent,
            builder: (_) {
              return Center(
                child: SelectSeatWidget(
                  number: number,
                  cubitContext: context,
                ),
              );
            },
          );
        },
        child: Container(
          height: 19,
          width: 22,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: const Color(0XFF4d788a).withOpacity(0.575),
          ),
          child: Center(
            child: Text(
              number,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 12,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pick_a_sit/features/pick_seat/presentation/widgets/confirm_booking_widget.dart';

///[SelectSeatWidget] is the class that represents
/// the select seat widget
class SelectSeatWidget extends StatelessWidget {
  /// [SelectSeatWidget] constructor
  const SelectSeatWidget({
    Key? key,
    required this.number,
  }) : super(key: key);

  /// [number] is the number of the seat
  final String number;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 228,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 16,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'SEAT $number',
                      style: const TextStyle(
                        color: Color(0XFF4672A5),
                        fontSize: 18,
                      ),
                    ),
                    const Text(
                      '€ 3.20',
                      style: TextStyle(
                        color: Color(0XFF4672A5),
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
              const Gap(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () => Navigator.pop(context),
                    child: Container(
                      width: 82,
                      height: 23,
                      decoration: BoxDecoration(
                        color: const Color(0XFFD6C16F),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Center(
                        child: Text(
                          'DISMISS',
                          style: TextStyle(
                            color: Color(0XFFFFFFFF),
                            fontSize: 9,
                          ),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                      showDialog(
                        context: context,
                        builder: (context) {
                          return Center(
                            child: ConfirmBookingWidget(
                              number: number,
                            ),
                          );
                        },
                      );
                    },
                    child: Container(
                      width: 82,
                      height: 23,
                      decoration: BoxDecoration(
                        color: const Color(0XFFB7CEEA),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Center(
                        child: Text(
                          'CONFIRM',
                          style: TextStyle(
                            color: Color(0XFFFFFFFF),
                            fontSize: 9,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:pick_a_sit/core/constants/assets.dart';

///[ConfirmBookingWidget] is the class that represents
///the confirm booking widget
class ConfirmBookingWidget extends StatelessWidget {
  ///[ConfirmBookingWidget] constructor
  const ConfirmBookingWidget({
    Key? key,
    required this.number,
  }) : super(key: key);

  ///[number] is the number of the seat
  final String number;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 228,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        color: Colors.white.withOpacity(.5),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 11,
              sigmaY: 11,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 32,
                vertical: 25,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Stack(
                    children: [
                      Text(
                        'SEAT $number IS BOOKED \nFOR YOU;-)',
                        style: const TextStyle(
                          height: 1.65,
                          color: Color(0XFF4672A5),
                          fontSize: 18,
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Image.asset(
                          AppAssets.thumbsUp,
                          height: 36,
                          width: 36,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

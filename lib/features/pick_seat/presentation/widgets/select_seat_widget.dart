import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:pick_a_sit/core/constants/assets.dart';
import 'package:pick_a_sit/features/pick_seat/domain/entities/user_entity.dart';
import 'package:pick_a_sit/features/pick_seat/presentation/cubit/book_sit_cubit.dart';

///[SelectSeatWidget] is the class that represents
/// the select seat widget
class SelectSeatWidget extends StatelessWidget {
  /// [SelectSeatWidget] constructor
  const SelectSeatWidget({
    Key? key,
    required this.number,
    required this.cubitContext,
  }) : super(key: key);

  /// [number] is the number of the seat
  final String number;

  /// [cubitContext] is the cubit context
  /// of the book sit cubit
  final BuildContext cubitContext;

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
                          cubitContext.read<BookSitCubit>().bookSeat(
                                number,
                                int.parse(number),
                                const UserEntity(
                                  image: AppAssets.userAvatar,
                                  firstName: 'Charles',
                                  lastName: 'Babbage',
                                ),
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
        ),
      ),
    );
  }
}

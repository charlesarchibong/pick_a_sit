import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';
import 'package:pick_a_sit/core/constants/assets.dart';
import 'package:pick_a_sit/core/di/sl.dart';
import 'package:pick_a_sit/core/utils/route.dart';
import 'package:pick_a_sit/features/pick_seat/domain/entities/bus_line_entity.dart';
import 'package:pick_a_sit/features/pick_seat/presentation/cubit/book_sit_cubit.dart';
import 'package:pick_a_sit/features/pick_seat/presentation/cubit/book_sit_state.dart';
import 'package:pick_a_sit/features/pick_seat/presentation/widgets/confirm_booking_widget.dart';
import 'package:pick_a_sit/features/pick_seat/presentation/widgets/flushbar_notification.dart';
import 'package:pick_a_sit/features/pick_seat/presentation/widgets/seat_number_widget.dart';
import 'package:pick_a_sit/features/pick_seat/presentation/widgets/widget_bg.dart';

/// [PickSeatPage] is the class that represents the pick seat page
class PickSeatPage extends StatelessWidget {
  ///[PickSeatPage] constructor
  const PickSeatPage({
    Key? key,
    required this.busLineEntity,
  }) : super(key: key);

  /// [busLineEntity] bus line entity
  /// of the selected bus line
  final BusLineEntity busLineEntity;

  /// [route] is the method that
  /// navigates to the book seat page
  static Route<bool> route({
    required BuildContext context,
    required BusLineEntity busLineEntity,
  }) {
    return PageRoutes.fadeThrough(
      settings: const RouteSettings(name: '/pick_seat'),
      builder: (BuildContext context) {
        return BlocProvider<BookSitCubit>(
          create: (context) => sl<BookSitCubit>()
            ..getSeats(
              busLineEntity.number,
            ),
          lazy: false,
          child: PickSeatPage(
            busLineEntity: busLineEntity,
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return WidgetBg(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: BlocConsumer<BookSitCubit, BookSitState>(
              listener: (context, state) {
                state.maybeWhen(
                  error: (message) => FlushBarNotification.showError(
                    context: context,
                    message: message,
                  ),
                  booked: (number) async {
                    final cubit = context.read<BookSitCubit>();
                    await showDialog(
                      context: context,
                      barrierColor: Colors.transparent,
                      builder: (context) {
                        return Center(
                          child: ConfirmBookingWidget(
                            number: number,
                          ),
                        );
                      },
                    );
                    await cubit.getSeats(
                      busLineEntity.number,
                    );
                  },
                  orElse: () {},
                );
              },
              builder: (context, state) {
                return state.maybeWhen(
                  loaded: (seats) {
                    return SingleChildScrollView(
                      child: Column(
                        children: [
                          const Gap(50),
                          Row(
                            children: const [
                              Text(
                                'PICK YOUR SEAT',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: Color(0XFFB6CEEA),
                                  fontSize: 32,
                                ),
                              ),
                            ],
                          ),
                          const Gap(23),
                          SizedBox(
                            width: 215,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  busLineEntity.number,
                                  textAlign: TextAlign.left,
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                  ),
                                ),
                                Text(
                                  busLineEntity.name,
                                  textAlign: TextAlign.left,
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                  ),
                                ),
                                Text(
                                  DateFormat('KK.mm')
                                      .format(busLineEntity.departure),
                                  textAlign: TextAlign.left,
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Gap(18),
                          SizedBox(
                            height: 459,
                            width: 179,
                            child: Stack(
                              children: [
                                Image.asset(
                                  AppAssets.busSeats,
                                  height: 459,
                                  width: 179,
                                ),
                                const SeatNumberWidget(
                                  number: '1',
                                  top: 60,
                                  right: 87,
                                ),
                                const SeatNumberWidget(
                                  number: '2',
                                  top: 95,
                                  right: 87,
                                ),
                                const SeatNumberWidget(
                                  number: '3',
                                  top: 130,
                                  right: 87,
                                ),
                                const SeatNumberWidget(
                                  number: '4',
                                  top: 65,
                                  right: 22,
                                ),
                                const SeatNumberWidget(
                                  number: '5',
                                  top: 125,
                                  right: 22,
                                ),
                                const SeatNumberWidget(
                                  number: '6',
                                  top: 193,
                                  right: 98,
                                ),
                                const SeatNumberWidget(
                                  number: '7',
                                  top: 272,
                                  right: 100,
                                ),
                                const SeatNumberWidget(
                                  number: '8',
                                  top: 193,
                                  right: 22,
                                ),
                                const SeatNumberWidget(
                                  number: '9',
                                  top: 274,
                                  right: 22,
                                ),
                                const SeatNumberWidget(
                                  number: '10',
                                  top: 395,
                                  right: 98,
                                ),
                                const SeatNumberWidget(
                                  number: '11',
                                  top: 395,
                                  right: 25,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  },
                  orElse: () {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  },
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

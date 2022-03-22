import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:pick_a_sit/core/di/sl.dart';
import 'package:pick_a_sit/features/pick_seat/presentation/cubit/pick_sit_cubit.dart';
import 'package:pick_a_sit/features/pick_seat/presentation/cubit/pick_sit_state.dart';
import 'package:pick_a_sit/features/pick_seat/presentation/pages/pick_seat_page.dart';
import 'package:pick_a_sit/features/pick_seat/presentation/widgets/flushbar_notification.dart';
import 'package:pick_a_sit/features/pick_seat/presentation/widgets/ride_header_row_widget.dart';
import 'package:pick_a_sit/features/pick_seat/presentation/widgets/ride_row_widget.dart';
import 'package:pick_a_sit/features/pick_seat/presentation/widgets/widget_bg.dart';

/// [BusLinesPage] is the class that represents the bus lines page
class BusLinesPage extends StatelessWidget {
  ///[BusLinesPage] constructor
  const BusLinesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<PickSitCubit>(
      create: (context) => sl<PickSitCubit>()..getBusLines(),
      child: Builder(
        builder: (context) {
          return WidgetBg(
            child: Scaffold(
              backgroundColor: Colors.transparent,
              body: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: BlocConsumer<PickSitCubit, PickSitState>(
                    listener: (context, state) {
                      state.maybeWhen(
                        error: (message) {
                          FlushBarNotification.showError(
                            context: context,
                            message: message,
                          );
                        },
                        orElse: () {},
                      );
                    },
                    builder: (context, state) {
                      return state.maybeWhen(
                        loaded: (busLines) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Gap(50),
                              const Text(
                                'PICK YOUR RIDE',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: Color(0XFFB6CEEA),
                                  fontSize: 32,
                                ),
                              ),
                              const Gap(70),
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 24,
                                  left: 14,
                                  right: 14,
                                ),
                                child: Column(
                                  children: [
                                    const RideHeaderRowWidget(),
                                    const Gap(5),
                                    ...busLines.map(
                                      (busLine) {
                                        return InkWell(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              PickSeatPage.route(
                                                context: context,
                                                busLineEntity: busLine,
                                              ),
                                            );
                                          },
                                          child: RideRowWidget(
                                            busLineEntity: busLine,
                                          ),
                                        );
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ],
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
        },
      ),
    );
  }
}

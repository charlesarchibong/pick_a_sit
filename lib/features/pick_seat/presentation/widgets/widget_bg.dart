import 'package:flutter/material.dart';
import 'package:pick_a_sit/core/constants/color.dart';

/// [WidgetBg] has the gradient background
/// for the app's pages
class WidgetBg extends StatelessWidget {
  /// [WidgetBg] constructor

  const WidgetBg({
    Key? key,
    required this.child,
  }) : super(key: key);

  ///[child] is the child widget
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.white,
            AppColors.blue,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomRight,
          stops: [0.2, .78],
        ),
      ),
      child: child,
    );
  }
}

import 'package:flutter/material.dart';

/// [RideHeaderRowWidget] is the class that represents
/// the ride header row widget
class RideHeaderRowWidget extends StatelessWidget {
  /// [RideHeaderRowWidget] constructor
  const RideHeaderRowWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Expanded(
          flex: 2,
          child: TextWidget(
            text: 'LINE',
          ),
        ),
        Expanded(
          flex: 5,
          child: TextWidget(
            text: 'DESTINATION',
          ),
        ),
        Expanded(
          flex: 2,
          child: TextWidget(
            text: 'DEP.',
          ),
        ),
        Expanded(
          flex: 2,
          child: TextWidget(
            text: 'GATE',
          ),
        ),
        Expanded(
          flex: 2,
          child: TextWidget(
            text: 'IN TIME',
          ),
        ),
      ],
    );
  }
}

/// [TextWidget] is the class that represents
/// the text widget
class TextWidget extends StatelessWidget {
  /// [TextWidget] constructor
  const TextWidget({
    Key? key,
    required this.text,
  }) : super(key: key);

  /// [text] is the text
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 10,
        color: Colors.black,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}

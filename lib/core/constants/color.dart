import 'package:flutter/material.dart';

/// A class that represents the color constants
/// of the application
class AppColors {
  /// The blue color
  static const blue = Color(0xff9CBCE2);

  /// The blue dark color
  static const blueDark = Color(0xff4672A5);

  /// The blue light color
  static const blueLight = Color(0xffB6CEEA);

  /// The  [colorScratch] of the application
  static const Map<int, Color> colorScratch = {
    50: Color.fromRGBO(182, 206, 234, .1),
    100: Color.fromRGBO(182, 206, 234, .2),
    200: Color.fromRGBO(182, 206, 234, .3),
    300: Color.fromRGBO(182, 206, 234, .4),
    400: Color.fromRGBO(182, 206, 234, .5),
    500: Color.fromRGBO(182, 206, 234, .6),
    600: Color.fromRGBO(182, 206, 234, .7),
    700: Color.fromRGBO(182, 206, 234, .8),
    800: Color.fromRGBO(182, 206, 234, .9),
    900: Color.fromRGBO(182, 206, 234, 1),
  };
}

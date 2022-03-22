import 'package:flutter/material.dart';
import 'package:pick_a_sit/core/constants/color.dart';
import 'package:pick_a_sit/core/di/sl.dart';
import 'package:pick_a_sit/features/pick_seat/presentation/pages/bus_lines_page.dart';

Future<void> main() async {
  await configureDependecies();

  runApp(
    const MyApp(),
  );
}

/// The MyApp class
class MyApp extends StatelessWidget {
  /// The [MyApp] constructor
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PickASeat',
      theme: ThemeData(
        fontFamily: 'Poppins',
        primarySwatch: const MaterialColor(
          0xffb6ceea,
          AppColors.colorScratch,
        ),
      ),
      home: const BusLinesPage(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:pick_a_sit/core/di/sl.dart';

Future<void> main() async {
  await configureDependecies();

  runApp(
    const Scaffold(
      body: Text('New App'),
    ),
  );
}

import 'package:flutter/services.dart';

/// this method is used to patch and get fake json
Future<String> fixture(String name) async =>
    rootBundle.loadString('assets/fixtures/$name');

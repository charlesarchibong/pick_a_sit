import 'dart:io';

/// this method is used to patch and get fake json
String fixture(String name) =>
    File('lib/features/pick_seat/data/datasources/fixtures/$name')
        .readAsStringSync();

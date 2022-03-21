import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:pick_a_sit/core/di/sl.config.dart';

/// This is the root of the dependency injection tree.
GetIt sl = GetIt.instance;

@injectableInit

/// this is the method to initialize the dependency injection tree.
Future<void> configureDependecies() async => $initGetIt(sl);

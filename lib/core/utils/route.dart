library routes_extension;

import 'package:animations/animations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// [PageRoutes] is a class that
/// contains the routes of the application
class PageRoutes {
  ///[fadeThrough] is a function that
  /// returns a [PageRouteBuilder]
  static Route<T> fadeThrough<T>({
    required WidgetBuilder builder,
    required RouteSettings settings,
    bool fullscreenDialog = false,
  }) {
    return PageRouteBuilder<T>(
      settings: settings,
      pageBuilder: (context, animation, secondaryAnimation) => builder(context),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return FadeThroughTransition(
          animation: animation,
          secondaryAnimation: secondaryAnimation,
          child: child,
        );
      },
    );
  }
}

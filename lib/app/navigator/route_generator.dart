import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:mos_teacher/app/navigator/route_helper.dart';
import 'package:mos_teacher/features/main_scene/view/main_scene.dart';
import 'package:mos_teacher/features/main_scene/view/main_scene_route.dart';

class RouteGenerator {
  static Route onGenerateRoute(RouteSettings settings) {
    log('onGenerateRoute("${settings.name}")');

    switch (settings.name) {
      case '/':
        return RouteHelper.getInitialRoute(settings);

      case CounterRoute.name:
        return MaterialPageRoute<PageRoute>(
          settings: RouteSettings(
            name: settings.name,
          ),
          builder: (_) => const MainScene(),
        );

      default:
        return MaterialPageRoute<PageRoute>(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for "${settings.name}"'),
            ),
          ),
        );
    }
  }
}

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:mos_teacher/app/navigator/route_helper.dart';
import 'package:mos_teacher/features/auth/login/view/login_screen.dart';
import 'package:mos_teacher/features/auth/login/view/login_screen_route.dart';
import 'package:mos_teacher/features/auth/reject/view/reject_screen.dart';
import 'package:mos_teacher/features/auth/reject/view/reject_screen_route.dart';
import 'package:mos_teacher/features/auth/welcome/view/welcome_screen.dart';
import 'package:mos_teacher/features/auth/welcome/view/welcome_screen_route.dart';
import 'package:mos_teacher/features/main_scene/view/main_scene.dart';
import 'package:mos_teacher/features/main_scene/view/main_scene_route.dart';

class RouteGenerator {
  static Route onGenerateRoute(RouteSettings settings) {
    log('onGenerateRoute("${settings.name}")');

    switch (settings.name) {
      case '/':
        return RouteHelper.getInitialRoute(settings);

      case LoginRoute.name:
        return MaterialPageRoute<PageRoute>(
          settings: RouteSettings(
            name: settings.name,
            arguments: settings.arguments,
          ),
          builder: (_) => const LoginScreen(),
        );

      case WelcomeRoute.name:
        return MaterialPageRoute<PageRoute>(
          settings: RouteSettings(
            name: settings.name,
            arguments: settings.arguments,
          ),
          builder: (_) => const WelcomeScreen(),
        );

      case RejectRoute.name:
        return MaterialPageRoute<PageRoute>(
          settings: RouteSettings(
            name: settings.name,
            arguments: settings.arguments,
          ),
          builder: (_) => const RejectScreen(),
        );

      case MainRoute.name:
        return MaterialPageRoute<PageRoute>(
          settings: RouteSettings(
            name: settings.name,
            arguments: settings.arguments,
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

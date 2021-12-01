import 'package:flutter/material.dart';
import 'package:mos_teacher/features/auth/login/view/login_screen.dart';

class RouteHelper {
  static MaterialPageRoute<PageRoute> getInitialRoute(RouteSettings settings) {
    return MaterialPageRoute<PageRoute>(
      settings: RouteSettings(
        name: settings.name,
        arguments: settings.arguments,
      ),
      builder: (_) => const LoginScreen(),
    );
  }
}

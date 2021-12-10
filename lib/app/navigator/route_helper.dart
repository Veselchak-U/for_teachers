import 'package:flutter/material.dart';
import 'package:mos_teacher/features/auth/login/view/login_screen.dart';
import 'package:mos_teacher/features/auth/reject/view/reject_screen.dart';
import 'package:mos_teacher/features/auth/security_code/code_start/view/code_start_screen.dart';
import 'package:mos_teacher/features/auth/welcome/view/welcome_screen.dart';

class RouteHelper {
  static MaterialPageRoute<PageRoute> getInitialRoute(RouteSettings settings) {
    return MaterialPageRoute<PageRoute>(
      settings: RouteSettings(
        name: settings.name,
        arguments: settings.arguments,
      ),
      builder: (_) => const RejectScreen(),
    );
  }
}

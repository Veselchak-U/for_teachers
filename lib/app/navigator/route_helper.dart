import 'package:flutter/material.dart';
import 'package:mos_teacher/features/main_scene/view/main_scene.dart';

class RouteHelper {
  static MaterialPageRoute<PageRoute> getInitialRoute(RouteSettings settings) {
    return MaterialPageRoute<PageRoute>(
      settings: RouteSettings(
        name: settings.name,
      ),
      builder: (_) => const MainScene(),
    );
  }
}

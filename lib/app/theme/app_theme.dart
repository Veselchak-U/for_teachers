import 'package:flutter/material.dart';
import 'package:mos_teacher/app/theme/text_theme.dart';

class AppThemeWidget extends InheritedWidget {
  const AppThemeWidget({
    Key? key,
    required this.appTheme,
    required Widget child,
  }) : super(key: key, child: child);

  final AppTheme appTheme;

  @override
  bool updateShouldNotify(AppThemeWidget oldWidget) {
    return appTheme != oldWidget.appTheme;
  }
}

abstract class AppTheme {
  ThemeData get theme;

  AppTextTheme get text;

  LinkButtonColors get linkButtonColors;

  LoginButtonColors get loginButtonColors;

  // IconColorGroup get icon;

  static AppTheme of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<AppThemeWidget>()!
        .appTheme;
  }
}

class LinkButtonColors {
  LinkButtonColors({
    required this.text,
    required this.background,
    required this.arrow,
  });

  final Color text;
  final Color background;
  final Color arrow;
}

class LoginButtonColors {
  LoginButtonColors({
    required this.text,
    required this.background,
    required this.arrow,
  });

  final Color text;
  final Color background;
  final Color arrow;
}

// class IconColorGroup {
//   IconColorGroup({
//     required this.primary,
//     required this.second,
//     required this.light,
//     required this.warning,
//     required this.done,
//     required this.close,
//   });
//
//   final IconColor primary;
//   final IconColor second;
//   final IconColor light;
//   final IconColor warning;
//   final IconColor done;
//   final IconColor close;
// }
//
// class IconColor {
//   IconColor({required this.color, required this.background});
//
//   final Color color;
//   final Color background;
// }

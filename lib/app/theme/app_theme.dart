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

  MtLinkButtonColors get linkButtonColors;

  MtLoginButtonColors get loginButtonColors;

  MtImageColors get imageColors;

  MtTextLightColors get textLightColors;

  MtTextDarkColors get textDarkColors;

  MtButtonColors get primaryButtonColors;

  MtButtonColors get transparentButtonColors;

  // IconColorGroup get icon;

  static AppTheme of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<AppThemeWidget>()!
        .appTheme;
  }
}

class MtButtonColors {
  MtButtonColors({
    required this.background,
    required this.text,
    this.border,
  });

  final Color background;
  final Color text;
  final Color? border;
}

class MtTextLightColors {
  MtTextLightColors({
    required this.white,
    required this.white10,
    required this.white20,
    required this.white30,
    required this.blue20,
  });

  final Color white;
  final Color white10;
  final Color white20;
  final Color white30;
  final Color blue20;
}

class MtTextDarkColors {
  MtTextDarkColors({
    required this.primary,
    required this.disabled,
  });

  final Color primary;
  final Color disabled;
}

class MtImageColors {
  MtImageColors({
    required this.progress,
    required this.disabled,
  });

  final Color progress;
  final Color disabled;
}

class MtLinkButtonColors {
  MtLinkButtonColors({
    required this.text,
    required this.background,
    required this.arrow,
  });

  final Color text;
  final Color background;
  final Color arrow;
}

class MtLoginButtonColors {
  MtLoginButtonColors({
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

import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mos_teacher/app/navigator/route_generator.dart';
import 'package:mos_teacher/app/theme/app_theme.dart';
import 'package:mos_teacher/app/theme/light_theme.dart';
import 'package:mos_teacher/app/view/error_screen.dart';
import 'package:mos_teacher/app/view/splash_screen.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  AppState createState() => AppState();
}

class AppState extends State<App> {
  bool? progress;
  String? error;

  @override
  void initState() {
    super.initState();
    _init();
  }

  Future<void> _init() async {
    progress = true;
    try {
      // initialization operations
      // await Future<void>.delayed(const Duration(seconds: 3));
    } catch (e, s) {
      error = '$e\n$s';
    }
    progress = false;
    if (mounted) setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    if (error != null) {
      return ErrorScreen(error!);
    }
    if (progress == true) {
      return const SplashScreen();
    }

    final AppTheme appTheme = LightTheme();
    Widget app = MaterialApp(
      theme: appTheme.theme,
      locale: const Locale('ru', 'RU'),
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [Locale('ru', 'RU')],
      builder: (context, widget) => MediaQuery(
        // not change with system font size
        data: MediaQuery.of(context).copyWith(textScaleFactor: 1),
        child: widget ?? const SizedBox.shrink(),
      ),
      onGenerateRoute: RouteGenerator.onGenerateRoute,
    );

    // application theme
    app = AppThemeWidget(
      appTheme: appTheme,
      child: app,
    );

    // adapting screen and font size
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: () => app,
    );
  }
}

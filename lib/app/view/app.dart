import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:mos_teacher/app/navigator/route_generator.dart';
import 'package:mos_teacher/app/view/error_screen.dart';
import 'package:mos_teacher/app/view/splash_screen.dart';
import 'package:mos_teacher/l10n/l10n.dart';

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
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(color: Color(0xFF13B9FF)),
        colorScheme: ColorScheme.fromSwatch(
          accentColor: const Color(0xFF13B9FF),
        ),
      ),
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
      ],
      supportedLocales: AppLocalizations.supportedLocales,
      onGenerateRoute: RouteGenerator.onGenerateRoute,
    );
  }
}

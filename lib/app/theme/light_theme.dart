import 'package:flutter/material.dart';

class LightTheme {
  static ThemeData get theme => ThemeData(
        appBarTheme: const AppBarTheme(color: Color(0xFF0055CB)),
        colorScheme: ColorScheme.fromSwatch(
          accentColor: const Color(0xFF13B9FF),
        ),
        fontFamily: 'Lato',
      );

  // background
  final _bluePrimroseMain = const Color(0xFF0055CB);
  final _bluePrimroseMain04 = const Color(0xFF0055CB).withOpacity(0.4);
  final _bluePrimrose20 = const Color(0xFFE0EDFF);
  final _bluePrimrose40 = const Color(0xFF4794FF);
  final _bluePrimrose60 = const Color(0xFF0044A2);
  final _bluePrimrose80 = const Color(0xFF2B3858);
  final _firstSnow = const Color(0xFFFFFFFF);
  final _atoms = const Color.fromRGBO(244, 243, 248, 0.1);
  final _linkButton = const Color.fromRGBO(255, 255, 255, 0.1);
  final _orangeSunsetMain = const Color(0xFFF2A657);
  final _orangeSunset20 = const Color(0xFFFEF6EE);
  final _orangeSunset60 = const Color(0xFFED861A);
  final _figGreenMain = const Color(0xFF3DAF3A);
  final _figGreen20 = const Color(0xFFEBF8EA);
  final _figGreen40 = const Color(0xFF84D682);
  final _figGreen60 = const Color(0xFF318C2E);
  final _withBg = const Color(0xFFEFF6FF);
  final _action = const Color.fromRGBO(255, 255, 255, 0.15);
  final _redRoseMain = const Color(0xFFCC2A35);
  final _redRose20 = const Color(0xFFFBE9EA);
  final _redRose40 = const Color(0xFFE47B83);
  final _redRose60 = const Color(0xFFA3212A);
  final _amethystStarlingMain = const Color(0xFF7A229B);
  final _amethystStarling40 = const Color(0xFFBB61DC);
  final _cover3FileTypes = const Color(0xFF0096E6);
  final _bageRectangleIconAtom = const Color.fromRGBO(255, 107, 107, 0.3);
  final _bageRectangleWithDdlAtomGreen =
      const Color.fromRGBO(105, 190, 103, 0.6);
  final _bageRectangleWithDdlAtomRed = const Color.fromRGBO(236, 106, 106, 0.6);

  // text
  final _oldAsphaltMain = const Color(0xFF7B819B);
  final _oldAsphalt10 = const Color(0xFFF4F3F8);
  final _oldAsphalt20 = const Color(0xFFE8E8EF);
  final _oldAsphalt30 = const Color(0xFFD7D9E1);
  final _oldAsphalt40 = const Color(0xFFB0B3C3);
  final _oldAsphalt80 = const Color(0xFF181920);
  final _timeToLeft = const Color.fromRGBO(71, 148, 255, 0.5);

  // icons
  final _avatarBlue = const Color(0xFF69ACFF);
  final _avatarRed = const Color(0xFFFF6B6B);
}

import 'package:flutter/material.dart';
import 'package:mos_teacher/app/theme/app_theme.dart';
import 'package:mos_teacher/app/theme/text_theme.dart';

class LightTheme implements AppTheme {
  @override
  ThemeData get theme => ThemeData(
        brightness: Brightness.light,
        primaryColor: _bluePrimroseMain,
        primaryColorLight: _bluePrimroseMain04,
        primaryColorDark: _bluePrimrose80,
        backgroundColor: _firstSnow,
        dialogBackgroundColor: _firstSnow,
        scaffoldBackgroundColor: _oldAsphalt10,
        fontFamily: 'Lato',
        // textTheme: AppTextTheme.defaultTextTheme,
      );

  @override
  AppTextTheme get text => AppTextTheme();

  @override
  LinkButtonColors get linkButtonColors => LinkButtonColors(
        text: _oldAsphalt30,
        background: _linkButton,
        arrow: _oldAsphalt40,
      );

  @override
  LoginButtonColors get loginButtonColors => LoginButtonColors(
        text: _oldAsphalt80,
        background: _firstSnow,
        arrow: _oldAsphalt40,
      );

  // @override
  // IconColorGroup get icon => IconColorGroup(
  //   primary: IconColor(
  //     color: _firstSnow,
  //     background: _bluePrimrose80,
  //   ),
  //   second: IconColor(
  //     color: _bluePrimrose80,
  //     background: _firstSnow,
  //   ),
  //   light: IconColor(
  //     color: _firstSnow,
  //     background: _bluePrimrose40,
  //   ),
  //   warning: IconColor(
  //     color: _firstSnow,
  //     background: _orangeSunset60,
  //   ),
  //   done: IconColor(
  //     color: _firstSnow,
  //     background: _figGreenMain,
  //   ),
  //   close: IconColor(
  //     color: _firstSnow,
  //     background: _redRoseMain,
  //   ),
  // );

  // background
  static const _firstSnow = Color(0xFFFFFFFF);
  static const _bluePrimroseMain = Color(0xFF0055CB);
  static const _bluePrimroseMain04 = Color.fromRGBO(0x00, 0x55, 0xCB, 0.4);
  static const _bluePrimrose20 = Color(0xFFE0EDFF);
  static const _bluePrimrose40 = Color(0xFF4794FF);
  static const _bluePrimrose60 = Color(0xFF0044A2);
  static const _bluePrimrose80 = Color(0xFF2B3858);
  static const _figGreenMain = Color(0xFF3DAF3A);
  static const _figGreen20 = Color(0xFFEBF8EA);
  static const _figGreen40 = Color(0xFF84D682);
  static const _figGreen60 = Color(0xFF318C2E);
  static const _orangeSunsetMain = Color(0xFFF2A657);
  static const _orangeSunset20 = Color(0xFFFEF6EE);
  static const _orangeSunset60 = Color(0xFFED861A);
  static const _redRoseMain = Color(0xFFCC2A35);
  static const _redRose20 = Color(0xFFFBE9EA);
  static const _redRose40 = Color(0xFFE47B83);
  static const _redRose60 = Color(0xFFA3212A);
  static const _amethystStarlingMain = Color(0xFF7A229B);
  static const _amethystStarling40 = Color(0xFFBB61DC);
  static const _bageRectangleIconAtom = Color.fromRGBO(255, 107, 107, 0.3);
  static const _bageRectangleWithDdlAtomGreen =
      Color.fromRGBO(105, 190, 103, 0.6);
  static const _bageRectangleWithDdlAtomRed =
      Color.fromRGBO(236, 106, 106, 0.6);
  static const _atoms = Color.fromRGBO(244, 243, 248, 0.1);
  static const _linkButton = Color.fromRGBO(255, 255, 255, 0.1);
  static const _action = Color.fromRGBO(255, 255, 255, 0.15);
  static const _withBg = Color(0xFFEFF6FF);
  static const _cover3FileTypes = Color(0xFF0096E6);

  // text
  static const _oldAsphaltMain = Color(0xFF7B819B);
  static const _oldAsphalt10 = Color(0xFFF4F3F8);
  static const _oldAsphalt20 = Color(0xFFE8E8EF);
  static const _oldAsphalt30 = Color(0xFFD7D9E1);
  static const _oldAsphalt40 = Color(0xFFB0B3C3);
  static const _oldAsphalt80 = Color(0xFF181920);
  static const _timeToLeft = Color.fromRGBO(71, 148, 255, 0.5);

  // icons
  static const _avatarBlue = Color(0xFF69ACFF);
  static const _avatarRed = Color(0xFFFF6B6B);
}

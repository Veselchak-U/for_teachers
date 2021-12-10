import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mos_teacher/app/asset/asset.dart';
import 'package:mos_teacher/app/theme/app_theme.dart';
import 'package:mos_teacher/app/view/components/button.dart';
import 'package:mos_teacher/features/auth/login/view/login_screen_route.dart';

class RejectScreen extends StatelessWidget {
  const RejectScreen();

  @override
  Widget build(BuildContext context) {
    return const RejectView();
  }
}

class RejectView extends StatefulWidget {
  const RejectView();

  @override
  _RejectViewState createState() => _RejectViewState();
}

class _RejectViewState extends State<RejectView> {
  void _exit() {
    // TODO(dy): implements
    log('_exit()');
    Navigator.of(context)
        .pushNamedAndRemoveUntil(LoginRoute.name, (route) => false);
  }

  void _contactUs() {
    // TODO(dy): implements
    log('_contactUs()');
  }

  @override
  Widget build(BuildContext context) {
    final appTheme = AppTheme.of(context);
    final text = AppTheme.of(context).text;
    return Scaffold(
      body: DecoratedBox(
        decoration: BoxDecoration(color: appTheme.theme.primaryColorDark),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  SizedBox(height: 86.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 48.r),
                    child: Image.asset(
                      Asset.png.rejectBackground,
                      width: double.infinity,
                    ),
                  ),
                  SizedBox(height: 24.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 31.r),
                    child: Text(
                      'К сожалению,\nна данный момент приложение доступно только для учителей',
                      style: text.s18w7h24
                          .copyWith(color: appTheme.textLightColors.white),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(height: 16.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 31.r),
                    child: Text(
                      'Если у вас возникли вопросы, напишите нам, используя форму обратной связи.',
                      style: text.s16w5h22
                          .copyWith(color: appTheme.textLightColors.white10),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.all(16.r),
                child: Column(
                  children: [
                    MtButton(
                      label: 'Выйти из аккаунта',
                      onTap: _exit,
                      colors: appTheme.primaryButtonColors,
                    ),
                    SizedBox(height: 12.h),
                    MtButton(
                      label: 'Написать нам',
                      onTap: _contactUs,
                      colors: appTheme.transparentButtonColors,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

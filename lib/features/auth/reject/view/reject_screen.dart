import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:mos_teacher/app/asset/asset.dart';
import 'package:mos_teacher/app/theme/app_theme.dart';
import 'package:mos_teacher/app/view/components/button.dart';

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
                  const SizedBox(height: 86),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 48),
                    child: Image.asset(Asset.png.rejectBackground),
                  ),
                  const SizedBox(height: 24),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 31),
                    child: Text(
                      'К сожалению,\nна данный момент приложение доступно только для учителей',
                      style: text.s18w7h24
                          .copyWith(color: appTheme.textLightColors.white),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 31),
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
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    MtButton(
                      label: 'Выйти из аккаунта',
                      onTap: _exit,
                      colors: appTheme.primaryButtonColors,
                    ),
                    const SizedBox(height: 12),
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

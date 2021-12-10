import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mos_teacher/app/asset/asset.dart';
import 'package:mos_teacher/app/theme/app_theme.dart';
import 'package:mos_teacher/app/view/components/appbar/app_bar.dart';
import 'package:mos_teacher/features/auth/security_code/code_start/view/components/plate_button.dart';

class CodeStartScreen extends StatelessWidget {
  const CodeStartScreen();

  @override
  Widget build(BuildContext context) {
    // return BlocProvider(
    //   create: (_) => CodeStartBloc()
    //     ..add(CodeStartEventGetBackground())
    //     ..add(CodeStartEventGetUser()),
    //   child: const CodeStartView(),
    // );
    return const CodeStartView();
  }
}

class CodeStartView extends StatefulWidget {
  const CodeStartView();

  @override
  _CodeStartViewState createState() => _CodeStartViewState();
}

class _CodeStartViewState extends State<CodeStartView> {
  void _setCode() {}

  void _dontSetCode() {}

  @override
  Widget build(BuildContext context) {
    final appTheme = AppTheme.of(context);
    final textTheme = AppTheme.of(context).text;
    return DecoratedBox(
      decoration: BoxDecoration(color: appTheme.theme.primaryColorDark),
      child: SafeArea(
        child: Scaffold(
          appBar: MtAppBar(
            title: 'Защита приложения',
            colors: appTheme.appBarDarkColors,
          ),
          body: Stack(
            children: [
              Container(
                height: 12.h,
                color: appTheme.theme.primaryColorDark,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      PlateButton(
                        title: 'Код-пароль',
                        subTitle: 'Назначить код-пароль',
                        svgIconAsset: Asset.svg.iconLockClose,
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(12.r),
                        ),
                        onTap: _setCode,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 62.r, right: 16.r),
                        child: Container(
                          height: 1.h,
                          color: Colors.black,
                        ),
                      ),
                      PlateButton(
                        title: 'Не устанавливать защиту',
                        subTitle: 'Вход в приложение без пароля',
                        svgIconAsset: Asset.svg.iconLockOpen,
                        borderRadius: BorderRadius.vertical(
                          bottom: Radius.circular(12.r),
                        ),
                        onTap: _dontSetCode,
                      ),
                    ],
                  ),
                  Stack(
                    alignment: AlignmentDirectional.bottomCenter,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 40.r,
                          vertical: 21.r,
                        ),
                        child: Image.asset(Asset.png.codeStartBackground),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.r),
                        child: Container(
                          height: 76.h,
                          padding: EdgeInsets.all(16.r),
                          decoration: BoxDecoration(
                            color: appTheme.labelColors.blue20,
                            borderRadius: BorderRadius.circular(8.r),
                          ),
                          child: Text(
                            'Рекомендуем защитить приложение, установив надежный код-пароль',
                            style: textTheme.s16w5h22.copyWith(
                                color: appTheme.textDarkColors.black80),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

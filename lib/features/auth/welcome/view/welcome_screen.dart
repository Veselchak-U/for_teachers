import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mos_teacher/app/asset/asset.dart';
import 'package:mos_teacher/app/theme/app_theme.dart';
import 'package:mos_teacher/app/view/components/image.dart';
import 'package:mos_teacher/features/auth/welcome/bloc/welcome_bloc.dart';
import 'package:mos_teacher/util/date.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => WelcomeBloc()
        ..add(WelcomeEventGetBackground())
        ..add(WelcomeEventGetUser()),
      child: const WelcomeView(),
    );
  }
}

class WelcomeView extends StatefulWidget {
  const WelcomeView();

  @override
  _WelcomeViewState createState() => _WelcomeViewState();
}

class _WelcomeViewState extends State<WelcomeView> {
  bool progress = false;
  String? pictureUrl;
  String? userName;

  String _today(BuildContext context) {
    final now = DateTime.now();
    return now.dateWithWeekday(context);
  }

  void _showError(BuildContext context, dynamic error) {
    final snackBar = SnackBar(
      content: Text('$error'),
      duration: const Duration(seconds: 3),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    final appTheme = AppTheme.of(context);
    final text = AppTheme.of(context).text;
    return BlocListener<WelcomeBloc, WelcomeState>(
      listener: (context, state) {
        state is WelcomeStateProgress ? progress = true : progress = false;
        if (state is WelcomeStateGotBackground) {
          pictureUrl = state.url;
        }
        if (state is WelcomeStateGotUser) {
          userName = state.userName;
        }
        if (state is WelcomeStateError) {
          _showError(context, state.error);
        }
        setState(() {});
      },
      child: Scaffold(
        body: DecoratedBox(
          decoration: BoxDecoration(color: appTheme.theme.primaryColorDark),
          child: Stack(
            alignment: AlignmentDirectional.bottomCenter,
            children: [
              AnimatedSwitcher(
                duration: const Duration(milliseconds: 500),
                child: (pictureUrl?.isNotEmpty == true)
                    ? MtImage(pictureUrl)
                    : Image.asset(Asset.png.welcomeBackground),
              ),
              SafeArea(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(16, 24, 16, 16),
                  child: Column(
                    children: [
                      SvgPicture.asset(Asset.svg.textMesh),
                      const SizedBox(height: 48),
                      AnimatedSwitcher(
                        duration: const Duration(milliseconds: 500),
                        child: (userName?.isNotEmpty == true)
                            ? Text(
                                '????????????????????????,\n$userName!',
                                style: text.s24w7h32.copyWith(
                                    color: appTheme.theme.backgroundColor),
                                textAlign: TextAlign.center,
                              )
                            : const SizedBox(height: 64),
                      ),
                      const SizedBox(height: 16),
                      Text(
                        '?????????????? ${_today(context)}',
                        style: text.s18w4h24
                            .copyWith(color: appTheme.textLightColors.blue20),
                      ),
                    ],
                  ),
                ),
              ),
              // if (progress)
              //   const Center(
              //     child: CircularProgressIndicator(),
              //   )
              // else
              //   const SizedBox.shrink(),
            ],
          ),
        ),
      ),
    );
  }
}

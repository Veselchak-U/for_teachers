import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mos_teacher/app/asset/asset.dart';
import 'package:mos_teacher/app/theme/app_theme.dart';
import 'package:mos_teacher/config.dart';
import 'package:mos_teacher/features/auth/login/bloc/login_bloc.dart';
import 'package:mos_teacher/features/auth/login/view/components/link_button.dart';
import 'package:mos_teacher/features/auth/login/view/components/login_button.dart';
import 'package:mos_teacher/features/auth/welcome/view/welcome_screen_route.dart';
import 'package:url_launcher/url_launcher.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => LoginBloc(),
      child: const LoginView(),
    );
  }
}

class LoginView extends StatefulWidget {
  const LoginView();

  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  bool progress = false;

  void _login(BuildContext context) {
    // TODO(du): implement
    log('_login');
    final result = '';
    final bloc = BlocProvider.of<LoginBloc>(context);
    bloc.add(LoginEventEnter(result));
  }

  void _onSuccessLogin() {
    // TODO(du): implement
    log('_onSuccessLogin');
    Navigator.of(context)
        .pushNamedAndRemoveUntil(WelcomeRoute.name, (route) => false);
  }

  void _showError(BuildContext context, dynamic error) {
    final snackBar = SnackBar(
      content: Text('$error'),
      duration: const Duration(seconds: 3),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  void _support() {
    // TODO(du): implement
    log('_support');
  }

  Future<void> _help() async {
    final url = Config.getInstance().helpUrl;
    if (!await launch(url)) {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context).theme;
    return BlocListener<LoginBloc, LoginState>(
      listener: (context, state) {
        state is LoginStateProgress ? progress = true : progress = false;
        if (state is LoginStateSuccess) {
          _onSuccessLogin();
        }
        if (state is LoginStateError) {
          _showError(context, state.error);
        }
        setState(() {});
      },
      child: Scaffold(
        body: DecoratedBox(
          decoration: BoxDecoration(color: theme.primaryColorDark),
          child: Stack(
            alignment: AlignmentDirectional.bottomCenter,
            children: [
              Image.asset(Asset.png.loginBackground),
              SafeArea(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(16, 24, 16, 16),
                  child: Column(
                    children: [
                      SvgPicture.asset(Asset.svg.textMesh),
                      const SizedBox(height: 45),
                      LoginButton(
                        onTap: () => _login(context),
                      ),
                      const SizedBox(height: 32),
                      LinkButton(
                        svgAsset: Asset.svg.iconMessageCircle,
                        text: 'Написать нам',
                        onTap: _support,
                      ),
                      const SizedBox(height: 12),
                      LinkButton(
                        svgAsset: Asset.svg.iconInfo,
                        text: 'Инструкция',
                        onTap: _help,
                      ),
                    ],
                  ),
                ),
              ),
              if (progress)
                const Center(
                  child: CircularProgressIndicator(),
                )
              else
                const SizedBox.shrink(),
            ],
          ),
        ),
      ),
    );
  }
}

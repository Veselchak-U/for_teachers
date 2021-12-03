import 'package:flutter/material.dart';
import 'package:mos_teacher/app/asset/asset.dart';
import 'package:mos_teacher/app/theme/app_theme.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({Key? key, required this.onTap}) : super(key: key);

  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    final colors = theme.loginButtonColors;
    final borderRadius = BorderRadius.circular(12);
    return Container(
      height: 64,
      decoration: BoxDecoration(
        color: colors.background,
        borderRadius: borderRadius,
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          splashColor: Colors.white,
          borderRadius: borderRadius,
          child: Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Row(
              children: [
                Image.asset(
                  Asset.png.iconLoginButton,
                  height: 40,
                  width: 40,
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: RichText(
                    text: TextSpan(
                      style: theme.text.s16w5h24.copyWith(color: colors.text),
                      children: [
                        const TextSpan(text: 'Вход через '),
                        TextSpan(
                          text: 'mos.ru',
                          style:
                              theme.text.s16w7h24.copyWith(color: colors.text),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Icon(Icons.arrow_forward_ios, size: 16, color: colors.arrow),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

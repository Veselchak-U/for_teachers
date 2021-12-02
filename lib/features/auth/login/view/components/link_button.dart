import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mos_teacher/app/theme/app_theme.dart';

class LinkButton extends StatelessWidget {
  const LinkButton({
    Key? key,
    required this.svgAsset,
    required this.text,
    this.onTap,
  }) : super(key: key);

  final String svgAsset;
  final String text;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    final colors = theme.linkButtonColors;
    final borderRadius = BorderRadius.circular(8);
    return Container(
      height: 48,
      decoration: BoxDecoration(
        color: colors.background,
        borderRadius: borderRadius,
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          borderRadius: borderRadius,
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 16),
            child: Row(
              children: [
                SvgPicture.asset(svgAsset, height: 24, width: 24),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    text,
                    style: theme.text.s16w5h24.copyWith(color: colors.text),
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

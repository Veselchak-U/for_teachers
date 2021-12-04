import 'package:flutter/material.dart';
import 'package:mos_teacher/app/theme/app_theme.dart';

class MtAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MtAppBar({
    Key? key,
    this.title = '',
    required this.colors,
  }) : super(key: key);

  final String title;
  final MtAppBarColors colors;

  @override
  Size get preferredSize => const Size(double.infinity, 56);

  @override
  Widget build(BuildContext context) {
    final appTheme = AppTheme.of(context);
    final textTheme = AppTheme.of(context).text;
    return Container(
      height: preferredSize.height,
      color: colors.background,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Text(
          title,
          style: textTheme.s20w7h24.copyWith(color: colors.text),
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:mos_teacher/app/theme/app_theme.dart';

class MtButton extends StatelessWidget {
  const MtButton({
    Key? key,
    required this.label,
    this.onTap,
    this.progress,
    this.colors,
  }) : super(key: key);

  final String label;
  final VoidCallback? onTap;
  final bool? progress;
  final MtButtonColors? colors;

  @override
  Widget build(BuildContext context) {
    final textTheme = AppTheme.of(context).text;
    final background = colors?.background ?? Colors.white;
    final border =
        colors?.border != null ? Border.all(color: colors!.border!) : null;
    final borderRadius = BorderRadius.circular(12);
    final textColor = colors?.text ?? Colors.black;
    final button = Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: 48,
          decoration: BoxDecoration(
            color: background,
            border: border,
            borderRadius: borderRadius,
          ),
          child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: onTap,
                borderRadius: borderRadius,
                child: Center(
                  child: Text(
                    label,
                    style: textTheme.s16w5h24.copyWith(color: textColor),
                  ),
                ),
              )),
        ),
        if (progress == true)
          const CircularProgressIndicator(strokeWidth: 2)
        else
          const SizedBox.shrink(),
      ],
    );

    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 300),
      child: button,
    );
  }
}

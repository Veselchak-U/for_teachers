import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
    final borderRadius = BorderRadius.circular(8.r);
    return Container(
      height: 48.h,
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
            padding: EdgeInsets.only(left: 20.r, right: 16.r),
            child: Row(
              children: [
                SvgPicture.asset(svgAsset, height: 24.r, width: 24.r),
                SizedBox(width: 8.w),
                Expanded(
                  child: Text(
                    text,
                    style: theme.text.s16w5h24.copyWith(color: colors.text),
                  ),
                ),
                SizedBox(width: 16.w),
                Icon(Icons.arrow_forward_ios, size: 16.r, color: colors.arrow),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

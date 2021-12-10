import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mos_teacher/app/theme/app_theme.dart';

class PlateButton extends StatelessWidget {
  const PlateButton({
    Key? key,
    required this.title,
    required this.subTitle,
    required this.svgIconAsset,
    required this.borderRadius,
    required this.onTap,
  }) : super(key: key);

  final String title;
  final String subTitle;
  final String svgIconAsset;
  final BorderRadius borderRadius;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    final colors = theme.loginButtonColors;
    return Container(
      height: 78.h,
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
            padding: EdgeInsets.only(left: 16.r, right: 16.r),
            child: Row(
              children: [
                SvgPicture.asset(
                  svgIconAsset,
                  height: 40.r,
                  width: 40.r,
                ),
                SizedBox(width: 12.w),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: theme.text.s16w7h24.copyWith(color: colors.text),
                      ),
                      Text(
                        subTitle,
                        style: theme.text.s14w5h18.copyWith(color: colors.text),
                      ),
                    ],
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

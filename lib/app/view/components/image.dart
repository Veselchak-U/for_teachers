import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mos_teacher/app/theme/app_theme.dart';

typedef FrameBuilder = Widget Function(
  BuildContext context,
  Widget child,
  int? frame,
  bool wasSynchronouslyLoaded,
);

class MtImage extends StatelessWidget {
  const MtImage(
    this.url, {
    this.height,
    this.width,
    this.radius,
    this.fit,
    this.showProgress,
  });

  final String? url;
  final double? height;
  final double? width;
  final BorderRadius? radius;
  final BoxFit? fit;
  final bool? showProgress;

  FrameBuilder? get _frameBuilder {
    if (showProgress == true) {
      return (context, child, frame, wasSynchronouslyLoaded) {
        if (wasSynchronouslyLoaded) {
          return child;
        }
        return AnimatedSwitcher(
          duration: const Duration(milliseconds: 300),
          child: frame == null
              ? Container(
                  width: width,
                  height: height,
                  alignment: Alignment.center,
                  child: CircularProgressIndicator(strokeWidth: 2.r),
                )
              : child,
        );
      };
    } else {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    final colors = AppTheme.of(context).imageColors;
    if (url?.isNotEmpty == true) {
      Widget child = Image(
        height: height,
        width: width,
        frameBuilder: _frameBuilder,
        loadingBuilder: (context, child, loadingProgress) {
          return Container(
            width: width,
            height: height,
            color: Colors.transparent, //colors.progress,
            child: child,
          );
        },
        errorBuilder: (context, error, stack) {
          return Container(
            width: width,
            height: height,
            color: colors.disabled,
            alignment: Alignment.center,
            child: const Text('No image', textAlign: TextAlign.center),
          );
        },
        image: CachedNetworkImageProvider(url!),
        fit: fit ?? BoxFit.cover,
      );
      if (radius != null) {
        child = ClipRRect(
          borderRadius: radius,
          child: child,
        );
      }
      return child;
    } else {
      return SizedBox(
        height: height,
        width: width,
      );
    }
  }
}

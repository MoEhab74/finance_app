import 'package:finance_app/core/styling/app_colors.dart';
import 'package:finance_app/core/styling/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrimaryOutLinedButton extends StatelessWidget {
  const PrimaryOutLinedButton({
    super.key,
    this.onPressed,
    required this.text,
    this.width,
    this.height,
    this.borderRadius,
    this.textColor,
    this.borderColor,
  });
  final void Function()? onPressed;
  final String text;
  final double? width;
  final double? height;
  final double? borderRadius;
  final Color? textColor;
  final Color? borderColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.whiteColor,
        side: BorderSide(color: AppColors.primaryColor, width: 1.w),
        fixedSize: Size(width?.w ?? 331.w, height?.h ?? 56.h),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius?.r ?? 8.r),
        ),
      ),
      child: Text(
        text,
        style: AppStyles.buttonTextStyle.copyWith(
          color: textColor ?? AppColors.primaryColor,
        ),
      ),
    );
  }
}

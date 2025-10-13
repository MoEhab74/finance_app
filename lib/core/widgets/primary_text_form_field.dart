import 'dart:developer';

import 'package:finance_app/core/styling/app_colors.dart';
import 'package:finance_app/core/styling/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextFormField extends StatelessWidget {
  const AppTextFormField({
    super.key,
    this.hintText,
    this.width,
    this.height,
    this.suffixIcon,
  });
  final String? hintText;
  final double? width;
  final double? height;
  final String? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? 331.w,
      height: height ?? 56.h,
      child: TextFormField(
        decoration: InputDecoration(
          suffixIcon: suffixIcon != null
              ? IconButton(
                  onPressed: () => log('Suffix icon tapped'),
                  icon: Image.asset(suffixIcon!, width: 22.w, height: 22.h),
                )
              : null,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(8.0)),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: BorderSide(color: AppColors.borderGrayColor),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: BorderSide(color: AppColors.primaryColor),
          ),
          filled: true,
          fillColor: AppColors.filledGrayColor,
          hintText: hintText ?? 'Enter text',
          hintStyle: AppStyles.buttonTextStyle.copyWith(
            color: AppColors.hintTextColor,
          ),
        ),
      ),
    );
  }
}

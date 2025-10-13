import 'package:finance_app/core/styling/app_colors.dart';
import 'package:finance_app/core/styling/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppStyles {
  static TextStyle primaryHeadLinesStyle = TextStyle(
    fontFamily: AppFonts.mainAppFont,
    fontSize: 30.sp,
    fontWeight: FontWeight.bold,
    color: AppColors.primaryColor,
  );

  static TextStyle subTitlesStyle = TextStyle(
    fontFamily: AppFonts.mainAppFont,
    fontSize: 16.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.secondaryColor,
  );

  static TextStyle bodyBlackStyle = TextStyle(
    fontFamily: AppFonts.mainAppFont,
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
    color: AppColors.blackColor,
  );

  static TextStyle buttonTextStyle = TextStyle(
    fontFamily: AppFonts.mainAppFont,
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.whiteColor,
  );

  static TextStyle bodyGrayStyle = TextStyle(
    fontFamily: AppFonts.mainAppFont,
    fontSize: 12.sp,
    fontWeight: FontWeight.w500,
    color: AppColors.grayColor,
  );
}

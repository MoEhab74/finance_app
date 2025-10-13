import 'package:finance_app/core/styling/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SocialMediaLoginButton extends StatelessWidget {
  const SocialMediaLoginButton({super.key, required this.image});
  final String image;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.whiteColor,
      borderRadius: BorderRadius.circular(8.0),
      child: InkWell(
        borderRadius: BorderRadius.circular(8.0),
        onTap: () {},
        child: Container(
          width: 105.w,
          height: 56.h,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.borderGrayColor),
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Image.asset(
            image,
            width: 24.w,
            height: 24.h,
          ),
        ),
      ),
    );
  }
}

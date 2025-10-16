import 'package:finance_app/core/styling/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TopContent extends StatelessWidget {
  const TopContent({
    super.key,
    required this.leftIcon,
    required this.rightIcon,
    this.iconColor,
    required this.title,
  });
  final String title;
  final IconData leftIcon;
  final IconData rightIcon;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Container(
            alignment: Alignment.center,
            width: 48.w,
            height: 48.h,
            decoration: BoxDecoration(
              color: AppColors.whiteColor,
              shape: BoxShape.circle,
              border: Border.all(
                color: const Color(0xffE3E9ED),
                width: 1,
              ),
            ),
            child: Icon(
              leftIcon,
              size: 24.sp,
              color: iconColor ?? AppColors.primaryColor,
            ),
          ),
          const SizedBox(width: 12),
          Padding(
            padding: const EdgeInsets.only(left: 71.0).r,
            child: Text(
              title,
              style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.w600,
                color: const Color(0xff1F2C37),
              ),
            ),
          ),
          const Spacer(),
          Container(
            width: 48.w,
            height: 48.h,
            decoration: BoxDecoration(
              color: AppColors.whiteColor,
              shape: BoxShape.circle,
              border: Border.all(
                color: const Color(0xffE3E9ED),
                width: 1,
              ),
            ),
            child: Icon(
              rightIcon,
              size: 24.sp,
              color: iconColor ?? AppColors.primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
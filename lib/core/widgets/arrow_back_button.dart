import 'package:finance_app/core/styling/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class ArrowBackButton extends StatelessWidget {
  const ArrowBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        padding: EdgeInsets.all(12.w),
        height: 40.h,
        width: 40.w,
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.borderGrayColor, width: 1.0),
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Align(
          alignment: Alignment.center,
          child: IconButton(
            padding: EdgeInsets.zero,
            onPressed: () {
              // context.pop();
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: AppColors.primaryColor,
            ),
          ),
        ),
      ),
    );
  }
}

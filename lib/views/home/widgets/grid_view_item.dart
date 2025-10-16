import 'package:finance_app/core/styling/app_colors.dart';
import 'package:finance_app/views/home/widgets/home_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GridViewItem extends StatelessWidget {
  const GridViewItem({
    super.key,
    required this.gridViewItemData,
  });
  final GridViewItemData gridViewItemData;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8.r),
      width: 156.w,
      height: 140.h,
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.circular(16.r),
        border: Border.all(color: const Color(0xffE3E9ED), width: 1),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Container
          Container(
            width: 48.w,
            height: 48.h,
            decoration: BoxDecoration(
              color: Color(0xffECF1F6),
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(12.r),
            ),
            child: Center(
              child: Icon(
                gridViewItemData.icon,
                size: 24.sp,
                color: AppColors.primaryColor,
              ),
            ),
          ),
          SizedBox(height: 12.h),
          // HeadLine
          Text(
            gridViewItemData.title,
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
              color: AppColors.blackColor,
            ),
          ),
          SizedBox(height: 4.h),
          // SubTitle
          Text(
            gridViewItemData.subtitle,
            style: TextStyle(
              fontSize: 12.sp,
              fontWeight: FontWeight.w500,
              color: AppColors.grayColor,
            ),
          ),
        ],
      ),
    );
  }
}

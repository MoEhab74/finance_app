import 'package:finance_app/core/styling/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24).r,
        child: Column(
          children: [
            Row(
              children: [
                // Row
                Expanded(
                  child: Row(
                    children: [
                      ClipOval(
                        child: Image.asset(
                          'assets/images/on_boarding.png',
                          width: 48.w,
                          height: 48.h,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(width: 12),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Welcome back!',
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                              color: AppColors.grayColor,
                            ),
                          ),
                          SizedBox(height: 4.h),
                          Text(
                            'Mohamed Ehab',
                            style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,
                              color: const Color(0xff1F2C37),
                            ),
                          ),
                        ],
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
                          Icons.notifications,
                          size: 24.sp,
                          color: AppColors.primaryColor,
                        ),
                      ),
                    ],
                  ),
                ),
                // Notification Icon
              ],
            ),
          ],
        ),
      ),
    );
  }
}

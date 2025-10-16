import 'package:finance_app/core/styling/app_colors.dart';
import 'package:finance_app/views/profile/widgets/profile_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 22).r,
        child: Column(
          children: [
            Row(
              children: [
                // Row
                TopContent(
                  title: 'My Profile',
                  leftIcon: Icons.arrow_back_ios,
                  rightIcon: Icons.notifications_none,
                  iconColor: AppColors.onSurfaceColor,
                ),
                // Notification Icon
              ],
            ),
            const SizedBox(height: 50),
            ClipOval(
              child: Image.asset(
                'assets/images/on_boarding.png',
                width: 100.w,
                height: 100.h,
                fit: BoxFit.cover,
              ),
            ),
            ProfileInformation(
              title: 'Full Name',
              information: 'Mohamed Ehab',
            ),
            ProfileInformation(
              title: 'Email',
              information: 'mohamed.ehab@example.com',
            ),
            ProfileInformation(
              title: 'Phone Number',
              information: '+1234567890',
            ),
            ProfileInformation(
              title: 'Address',
              information: '123 Main St, Springfield, USA',
            ),
          ],
        ),
      ),
    );
  }
}

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



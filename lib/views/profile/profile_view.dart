import 'package:finance_app/core/styling/app_colors.dart';
import 'package:finance_app/core/widgets/custom_top_content.dart';
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
            TopContent(
              title: 'My Profile',
              leftIcon: Icons.arrow_back_ios,
              rightIcon: Icons.notifications_none,
              iconColor: AppColors.onSurfaceColor,
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





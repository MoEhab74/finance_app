import 'package:finance_app/core/styling/app_colors.dart';
import 'package:finance_app/core/widgets/primary_button_widget.dart';
import 'package:finance_app/core/widgets/primary_outlined_button_widget.dart';
import 'package:finance_app/routing/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/on_boarding.png',
              width: 375.w,
              height: 570.h,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 20),
            AppButton(
              text: 'Login',
              onPressed: () {
                // Navigate to Login View by go_router
                GoRouter.of(context).pushNamed(AppRoutes.homeView);
              },
            ),
            const SizedBox(height: 16),
            PrimaryOutLinedButton(text: 'Register', onPressed: () {
              GoRouter.of(context).pushNamed(AppRoutes.registerView);
            }),
            const SizedBox(height: 46),
            TextButton(
              onPressed: () {},
              child: Text(
                'Continue as a guest',
                style: TextStyle(
                  color: AppColors.onSurfaceColor,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

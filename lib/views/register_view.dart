import 'package:finance_app/core/styling/app_colors.dart';
import 'package:finance_app/core/styling/app_styles.dart';
import 'package:finance_app/core/widgets/arrow_back_button.dart';
import 'package:finance_app/core/widgets/auth_or_verify_hint.dart';
import 'package:finance_app/core/widgets/primary_button_widget.dart';
import 'package:finance_app/core/widgets/primary_text_form_field.dart';
import 'package:finance_app/core/widgets/social_media_login_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(22.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 40),
            // back button
            ArrowBackButton(),
            const SizedBox(height: 32),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Hello! Register to get\nstarted',
                style: AppStyles.primaryHeadLinesStyle,
              ),
            ),
            const SizedBox(height: 32),
            AppTextFormField(
              hintText: 'Username',
            ),
            const SizedBox(height: 16),
            AppTextFormField(
              hintText: 'email',
            ),
            const SizedBox(height: 16),
            AppTextFormField(
              hintText: 'Password',
              isPassword: true,
              obscureText: true,
            ),
            const SizedBox(height: 16),
            AppTextFormField(
              hintText: 'Confirm Password',
              isPassword: true,
              obscureText: true,
            ),
            const SizedBox(height: 30),
            AppButton(text: 'Register', onPressed: () {}),
            const SizedBox(height: 35),
            Row(
              children: [
                Expanded(
                  child: Divider(
                    color: AppColors.borderGrayColor,
                    thickness: 0.5,
                  ),
                ),
                Text(
                  '  Or Register with  ',
                  style: TextStyle(
                    color: Color(0xff6A707C),
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Expanded(
                  child: Divider(
                    color: AppColors.borderGrayColor,
                    thickness: 0.5,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 22),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SocialMediaLoginButton(image: 'assets/icons/facebook.png'),
                SocialMediaLoginButton(image: 'assets/icons/google.png'),
                SocialMediaLoginButton(image: 'assets/icons/apple.png'),
              ],
            ),
            const SizedBox(height: 54),
            AuthenticationOrVerificationHint(
              questionText: "Already have an account? ",
              actionText: 'Login',
              onTap: () {
                Navigator.pop(context); // GoRouter.of(context).pop();
              },
            ),
          ],
        ),
      ),
    );
  }
}
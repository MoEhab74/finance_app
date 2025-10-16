import 'package:finance_app/core/styling/app_styles.dart';
import 'package:finance_app/core/widgets/arrow_back_button.dart';
import 'package:finance_app/core/widgets/auth_or_verify_hint.dart';
import 'package:finance_app/core/widgets/primary_button_widget.dart';
import 'package:finance_app/core/widgets/primary_text_form_field.dart';
import 'package:finance_app/routing/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

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
                'Forgot Password?',
                style: AppStyles.primaryHeadLinesStyle,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              'Don\'t worry! It occurs. Please enter the email\naddress linked with your account.',
              style: AppStyles.subTitlesStyle,
            ),
            const SizedBox(height: 32),
            AppTextFormField(
              hintText: 'Enter Your Email',
            ),
            const SizedBox(height: 38),
            AppButton(text: 'Send code', onPressed: () {
              context.pushNamed(AppRoutes.otpVerificationView);
            }),
            const SizedBox(height: 361),
            AuthenticationOrVerificationHint(
              questionText: "Remember password? ",
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
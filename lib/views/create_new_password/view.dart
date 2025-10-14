import 'package:finance_app/core/styling/app_styles.dart';
import 'package:finance_app/core/widgets/arrow_back_button.dart';
import 'package:finance_app/core/widgets/primary_button_widget.dart';
import 'package:finance_app/core/widgets/primary_text_form_field.dart';
import 'package:finance_app/views/create_new_password/widgets/my_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CreateNewPasswordView extends StatelessWidget {
  const CreateNewPasswordView({super.key});

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
                'Create New Password',
                style: AppStyles.primaryHeadLinesStyle,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              'Your new password must be unique from those previously used.',
              style: AppStyles.subTitlesStyle,
            ),
            const SizedBox(height: 32),
            AppTextFormField(
              hintText: 'New Password',
              obscureText: true,
              isPassword: true,
            ),
            const SizedBox(height: 16),
            AppTextFormField(
              hintText: 'Confirm Password',
              obscureText: true,
              isPassword: true,
            ),
            const SizedBox(height: 38),
            AppButton(text: 'Reset Password', onPressed: () {
              // Reset password logic here
              showDialog(
                  context: context,
                  builder: (context) => const MyDialog(),
                );
            }),
          ],
        ),
      ),
    );
  }
}
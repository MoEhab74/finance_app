import 'package:finance_app/core/styling/app_styles.dart';
import 'package:finance_app/core/widgets/primary_button_widget.dart';
import 'package:finance_app/routing/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class MyDialog extends StatelessWidget {
  const MyDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/icons/successmark.png',
            height: 100.h,
            width: 100.w,
          ),
          const SizedBox(height: 35),
          Text('Done', style: AppStyles.primaryHeadLinesStyle),
          const SizedBox(height: 8),
          Text(
            'Your password has been changed successfully.',
            style: AppStyles.subTitlesStyle,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 32),
          AppButton(
            text: 'Login',
            onPressed: () {
              Navigator.pop(context); // Close the dialog
              context.go(AppRoutes.loginView); // Navigate to loginView
            },
          ),
        ],
      ),
    );
  }
}

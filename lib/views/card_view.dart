import 'package:finance_app/core/styling/app_colors.dart';
import 'package:finance_app/core/widgets/custom_top_content.dart';
import 'package:finance_app/views/home/widgets/card_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardView extends StatelessWidget {
  const CardView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 22).r,
        child: Column(
          children: [
            Row(
              children: [
                TopContent(
                  leftIcon: Icons.arrow_back_ios,
                  rightIcon: Icons.notifications_none,
                  title: 'My Cards',
                  iconColor: AppColors.onSurfaceColor,
                ),
              ],
            ),
            const SizedBox(height: 24),
            // Your card view content here
            CardItem(
              cardTitle: 'Mohamed',
              balance: 7456,
              cardNumber: '7895',
              expiryDate: '12/25',
              cardColor: const Color.fromARGB(255, 34, 67, 100),
            ),
            const SizedBox(height: 16),
            CardItem(
              cardTitle: 'Ehab',
              balance: 1234,
              cardNumber: '1234',
              expiryDate: '11/24',
              cardColor: AppColors.primaryColor,
            ),
          ],
        ),
      ),
    );
  }
}

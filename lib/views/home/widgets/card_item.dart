import 'package:finance_app/core/styling/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardItem extends StatelessWidget {
  const CardItem({
    super.key,
    required this.cardTitle,
    required this.balance,
    required this.cardNumber,
    required this.expiryDate,
    this.cardColor,
  });
  final String cardTitle;
  final double balance;
  final String cardNumber;
  final String expiryDate;
  final Color? cardColor;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: 207.h,
          height: 263.h,
          decoration: BoxDecoration(
            color: cardColor ?? AppColors.primaryColor,
            borderRadius: BorderRadius.circular(16.r),
          ),
        ),
        Positioned(
          bottom: 0.h,
          left: 0.w,
          child: Image.asset(
            'assets/images/layer2.png',
            width: 130.w,
            height: 130.h,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 0.h,
          left: 0.w,
          child: Image.asset(
            'assets/images/layer2.png',
            width: 130.w,
            height: 130.h,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 0.h,
          left: 0.w,
          child: Image.asset(
            'assets/images/layer1.png',
            width: 200.w,
            height: 200.h,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 0.h,
          left: 0.w,
          child: Image.asset(
            'assets/images/layer1.png',
            width: 200.w,
            height: 200.h,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      cardTitle,
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w700,
                        color: AppColors.whiteColor,
                      ),
                    ),
                  ),
                  SizedBox(height: 57.h),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Balance',
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        color: Color(0xffFDFDFD),
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      balance.toString(),
                      style: TextStyle(
                        fontSize: 24.sp,
                        fontWeight: FontWeight.w600,
                        color: AppColors.whiteColor,
                      ),
                    ),
                  ),
                  SizedBox(height: 60.h),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          '**** $cardNumber',
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                            color: Color(0xffFDFDFD),
                          ),
                        ),
                      ),
                      const SizedBox(width: 40),
                      Padding(
                        padding: const EdgeInsets.only(right: 16.0),
                        child: Text(
                          expiryDate,
                          style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                            color: AppColors.whiteColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

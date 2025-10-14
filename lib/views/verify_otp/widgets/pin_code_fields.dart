import 'package:finance_app/core/styling/app_colors.dart';
import 'package:finance_app/core/styling/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class MyPinCodeFields extends StatelessWidget {
  const MyPinCodeFields({super.key});

  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      textStyle: TextStyle(
        fontSize: 24,
        color: AppColors.onSurfaceColor,
        fontFamily: AppFonts.mainAppFont,
        fontWeight: FontWeight.w500,
      ),
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      appContext: context,
      length: 4,
      keyboardType: TextInputType.number,
      enableActiveFill: true,
      cursorColor: AppColors.primaryColor,
      pinTheme: PinTheme(
        shape: PinCodeFieldShape.box,
        borderRadius: BorderRadius.circular(8),
        fieldHeight: 60,
        fieldWidth: 70,
        activeFillColor: AppColors.whiteColor,
        selectedFillColor: AppColors.whiteColor,
        inactiveFillColor: AppColors.filledGrayColor,
        selectedColor: AppColors.primaryColor,
        activeColor: AppColors.primaryColor,
        inactiveColor: AppColors.borderGrayColor,
        borderWidth: 1,
      ),
      onChanged: (value) {
        print("Current code: $value");
      },
      onCompleted: (value) {
        print("Code entered: $value");
      },
    );
  }
}
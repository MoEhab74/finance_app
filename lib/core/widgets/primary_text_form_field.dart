import 'package:finance_app/core/styling/app_colors.dart';
import 'package:finance_app/core/styling/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextFormField extends StatefulWidget {
  const AppTextFormField({
    super.key,
    this.hintText,
    this.width,
    this.height,
    this.isPassword,
    this.obscureText,
  });
  final String? hintText;
  final double? width;
  final double? height;
  final bool? isPassword;
  final bool? obscureText;

  @override
  State<AppTextFormField> createState() => _AppTextFormFieldState();
}

class _AppTextFormFieldState extends State<AppTextFormField> {
  late bool isObscured;

  @override
  void initState() {
    super.initState();
    isObscured = widget.obscureText ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width ?? 331.w,
      height: widget.height ?? 56.h,
      child: TextFormField(
        obscureText: isObscured,
        decoration: InputDecoration(
          suffixIcon: widget.isPassword != null
              ? IconButton(
                  onPressed: () {
                    // Show or hide password logic
                    setState(() {
                      isObscured = !isObscured;
                    });
                  },
                  icon: Icon(
                    isObscured ? Icons.visibility_off : Icons.visibility,
                    size: 22,
                    color: AppColors.hintTextColor,
                  ),
                )
              : null,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(8.0)),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: BorderSide(color: AppColors.borderGrayColor),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: BorderSide(color: AppColors.primaryColor),
          ),
          filled: true,
          fillColor: AppColors.filledGrayColor,
          hintText: widget.hintText ?? 'Enter text',
          hintStyle: AppStyles.buttonTextStyle.copyWith(
            color: AppColors.hintTextColor,
          ),
        ),
      ),
    );
  }
}

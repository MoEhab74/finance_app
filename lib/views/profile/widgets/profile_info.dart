import 'package:finance_app/core/styling/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileInformation extends StatelessWidget {
  const ProfileInformation({
    super.key,
    required this.title,
    required this.information,
  });
  final String title;
  final String information;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 16),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(title, style: AppStyles.bodySmallGrayStyle),
        ),
        const SizedBox(height: 16),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(information, style: AppStyles.informationBodyStyle),
        ),
        const SizedBox(height: 16),
        title != 'Address'
            ? Divider(color: const Color(0xffF2F2F5), height: 1.h)
            : const SizedBox.shrink(),
      ],
    );
  }
}

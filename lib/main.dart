import 'package:finance_app/core/styling/theme_data.dart';
import 'package:finance_app/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) {
        return MaterialApp(
          title: 'Finance App',
          home: child,
          debugShowCheckedModeBanner: false,
          theme: AppThemes.lightTheme,
        );
      },
      designSize: const Size(375, 812),
      child: const OnBoardingView(),
    );
  }
}

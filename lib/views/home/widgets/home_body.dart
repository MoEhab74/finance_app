import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:finance_app/core/styling/app_colors.dart';
import 'package:finance_app/views/home/widgets/card_item.dart';
import 'package:finance_app/views/home/widgets/top_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  double currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22).r,
        child: Column(
          children: [
            TopContentHomeBodyView(),
            const SizedBox(height: 21),
            CarouselSlider(
              options: CarouselOptions(
                height: 263.h,
                padEnds: false,
                viewportFraction: 0.7,
                enlargeCenterPage: true,
                enlargeFactor: 0.2,
                onPageChanged: (index, reason) {
                  setState(() {
                    currentPageIndex = index.toDouble();
                  });
                },
              ),
              items: [
                CardItem(
                  cardTitle: 'Mohamed',
                  balance: 23400,
                  cardNumber: '1234',
                  expiryDate: '12/24',
                  cardColor: AppColors.primaryColor,
                ),
                CardItem(
                  cardTitle: 'Ehab',
                  balance: 74500,
                  cardNumber: '4321',
                  expiryDate: '11/25',
                  cardColor: const Color.fromARGB(255, 34, 67, 100),
                ),
              ],
            ),
            const SizedBox(height: 16),
            DotsIndicator(
              animate: true,
              dotsCount: 2,
              position: currentPageIndex,
              decorator: DotsDecorator(
                spacing: const EdgeInsets.symmetric(horizontal: 4.0),
                size: const Size.square(9.0),
                activeSize: const Size(18.0, 9.0),
                activeShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

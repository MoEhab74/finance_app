import 'package:finance_app/core/styling/app_colors.dart';
import 'package:finance_app/core/styling/app_styles.dart';
import 'package:finance_app/views/home/widgets/home_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int currentIndex = 0;
  var pages = [
    HomeViewBody(),
    Container(
      color: Colors.white,
      child: Center(
        child: Text('Statistics Page', style: AppStyles.primaryHeadLinesStyle),
      ),
    ),
    Container(
      color: Colors.white,
      child: Center(
        child: Text('Add Page', style: AppStyles.primaryHeadLinesStyle),
      ),
    ),
    Container(
      color: Colors.white,
      child: Center(
        child: Text('My Card Page', style: AppStyles.primaryHeadLinesStyle),
      ),
    ),
    Container(
      color: Colors.white,
      child: Center(
        child: Text('Profile Page', style: AppStyles.primaryHeadLinesStyle),
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedLabelStyle: TextStyle(
          fontSize: 14.sp,
          fontWeight: FontWeight.w500,
          color: AppColors.onSurfaceColor,
        ),
        unselectedLabelStyle: TextStyle(
          fontSize: 14.sp,
          fontWeight: FontWeight.w500,
          color: AppColors.secondaryIconColor,
        ),
        unselectedItemColor: AppColors.secondaryIconColor,
        selectedItemColor: AppColors.primaryColor,
        type: BottomNavigationBarType.fixed,
        elevation: 0,
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart,),
            label: 'Statistics',
          ),
          BottomNavigationBarItem(
            icon: Container(
              width: 40.w,
              height: 40.h,
              padding: EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: AppColors.primaryColor,
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Icon(Icons.add, color: AppColors.primaryColor),
                ),
              ),
            ),
            label: 'Add',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_balance_wallet,
              
            ),
            label: 'My Card',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person,),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

import 'package:finance_app/core/styling/app_styles.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int currentIndex = 0;
  var pages = [
    Container(
      color: Colors.white,
      child: Center(
        child: Text('Home Page', style: AppStyles.primaryHeadLinesStyle),
      ),
    ),
    Container(
      color: Colors.white,
      child: Center(
        child: Text('Search Page', style: AppStyles.primaryHeadLinesStyle),
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
        elevation: 0,
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}

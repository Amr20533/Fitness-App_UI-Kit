import 'package:fitness_app_ui_kit/layouts/main/analytics_layout.dart';
import 'package:fitness_app_ui_kit/layouts/main/explore_layout.dart';
import 'package:fitness_app_ui_kit/layouts/main/home_layout.dart';
import 'package:fitness_app_ui_kit/utils/static/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MainLayout extends StatefulWidget {
  const MainLayout({super.key});

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  int _selectedIndex = 0; 

  final List<Widget> _screens = [
    HomeLayout(),
    ExploreLayout(),
    AnalyticsLayout(),
    Center(child: Text('Settings Screen')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: _screens[_selectedIndex]),
      bottomNavigationBar: Container(
        height: 56.h,
        margin: EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.sp),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(32.sp),
          child: GNav(
            gap: 8,
            color: AppColors.kPrimaryWhiteColor,
            activeColor: AppColors.kPrimaryBlackColor,
            backgroundColor: AppColors.kPrimaryColor,
            tabBackgroundColor: AppColors.kSecondaryColor,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8.h),
            tabs: const [
              GButton(
                icon: Icons.home,
                text: 'Home',
              ),
              GButton(
                icon: Icons.search,
                text: 'Explore',
              ),
              GButton(
                icon: Icons.record_voice_over_rounded,
                text: 'Analytics',
              ),
              GButton(
                icon: Icons.person,
                text: 'Profile',
              ),
            ],
            textStyle: Theme.of(context).textTheme.titleSmall,
            selectedIndex: _selectedIndex,
            onTabChange: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
          ),
        ),
      ),
    );
  }
}

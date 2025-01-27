import 'package:fitness_app_ui_kit/layouts/main/analytics_layout.dart';
import 'package:fitness_app_ui_kit/layouts/main/explore_layout.dart';
import 'package:fitness_app_ui_kit/layouts/main/home_layout.dart';
import 'package:fitness_app_ui_kit/utils/static/app_assets.dart';
import 'package:fitness_app_ui_kit/utils/static/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../components/shared_components/nav_icon.dart';

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
    Center(child: Text('Profile Screen')),
  ];

  final List<String> _navLabels = [
    "Home",
    "Explore",
    "Analytics",
    "Profile",
  ];
  final List<String> _navIcons = [
    AppAssets.home,
    AppAssets.explore,
    AppAssets.statistic,
    AppAssets.profile,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: _screens[_selectedIndex]),
      bottomNavigationBar: Container(
        height: 64.h,
        margin: EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
        padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 14.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32.sp),
          color: AppColors.kPrimaryColor
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(4, (index) {
            bool selected = index == _selectedIndex;
            return NavIcon(
            onTap: () {
              setState(() {
                _selectedIndex = index;
              });
            },
            label: _navLabels[index],
            selected: selected,
            icon: _navIcons[index],
          );
          }),
        ),
      ),
    );
  }
}


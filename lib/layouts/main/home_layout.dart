import 'package:fitness_app_ui_kit/components/main/home/popular_workout_slider.dart';
import 'package:fitness_app_ui_kit/components/main/home/search_box.dart';
import 'package:fitness_app_ui_kit/components/main/home/today_plan_slider.dart';
import 'package:fitness_app_ui_kit/components/shared_components/custom_title.dart';
import 'package:fitness_app_ui_kit/utils/static/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        spacing: 20.h,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 30.h),
                  child: Text("Good Morning 🔥", style: Theme.of(context).textTheme.titleLarge!.copyWith(fontSize: 14.sp, color: AppColors.kPrimaryBlackColor)),
                ),
                Text("Amr Elnemr", style: Theme.of(context).textTheme.headlineMedium!.copyWith()),
              ],
            ),
          ),
          SearchBox(),
          CustomTitle(title: "Popular Workouts"),
          PopularWorkoutSlider(),
          CustomTitle(title: "Today Plan"),
          TodayPlanSlider(),

        ],
      ),
    );
  }
}
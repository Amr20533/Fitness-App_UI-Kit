import 'package:fitness_app_ui_kit/components/main/home/popular_workout_card.dart';
import 'package:fitness_app_ui_kit/components/main/home/today_plan_card.dart';
import 'package:fitness_app_ui_kit/models/popular_workouts_model.dart';
import 'package:fitness_app_ui_kit/models/today_plan_model.dart';
import 'package:flutter/material.dart';
import 'package:fitness_app_ui_kit/utils/helpers/json_helper.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TodayPlanSlider extends StatelessWidget {
  const TodayPlanSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<TodayPlanModel>>(
      future: JsonHelper.getTodayPlanWorkouts(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
          return const Center(child: Text('No Plans found.'));
        } else {
          final plans = snapshot.data!;

          return ListView.separated(
            itemCount: plans.length,
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              final plan = plans[index];
              return TodayPlanCard(plan: plan);
            },
            separatorBuilder: (context, index) => SizedBox(height: 20.w,),
          );
        }
      },
    );
  }
}

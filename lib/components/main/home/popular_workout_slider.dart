import 'package:fitness_app_ui_kit/components/main/home/popular_workout_card.dart';
import 'package:fitness_app_ui_kit/models/popular_workouts_model.dart';
import 'package:flutter/material.dart';
import 'package:fitness_app_ui_kit/utils/helpers/json_helper.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PopularWorkoutSlider extends StatelessWidget {
  const PopularWorkoutSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<PopularWorkoutsModel>>(
      future: JsonHelper.getPopularWorkouts(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
          return const Center(child: Text('No workouts found.'));
        } else {
          final workouts = snapshot.data!;

          return SizedBox(
            height: 180.h,
            child: ListView.separated(
              itemCount: workouts.length,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              itemBuilder: (context, index) {
                final workout = workouts[index];
                return PopularWorkoutCard(workout: workout);
              },
              separatorBuilder: (context, index) => SizedBox(width: 20.w,),
            ),
          );
        }
      },
    );
  }
}

import 'package:fitness_app_ui_kit/components/main/explore/best_for_you_card.dart';
import 'package:fitness_app_ui_kit/models/best_for_you_model.dart';
import 'package:flutter/material.dart';
import 'package:fitness_app_ui_kit/utils/helpers/json_helper.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BestForYouWrapper extends StatelessWidget {
  const BestForYouWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<BestForYouModel>>(
      future: JsonHelper.getBestForYouWorkouts(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
          return const Center(child: Text('No workouts found.'));
        } else {
          final bestForYouData = snapshot.data!;

          return SizedBox(
            height: 183.h,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: (bestForYouData.length / 2).ceil(),
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              itemBuilder: (context, rowIndex) {
                int firstIndex = rowIndex * 2;
                int secondIndex = firstIndex + 1;
                return Column(
                  children: [
                    BestForYouCard(bestForYou: bestForYouData[firstIndex]),
                    if (secondIndex < bestForYouData.length) SizedBox(height: 10.h),
                    if (secondIndex < bestForYouData.length)
                      BestForYouCard(bestForYou: bestForYouData[secondIndex]),
                  ],
                );
              },
              separatorBuilder: (context, rowIndex) => SizedBox(width: 16.w),
            ),
          );
        }
      },
    );
  }

}
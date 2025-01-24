import 'package:fitness_app_ui_kit/components/main/explore/warm_up_card.dart';
import 'package:fitness_app_ui_kit/models/warm_up_model.dart';
import 'package:flutter/material.dart';
import 'package:fitness_app_ui_kit/utils/helpers/json_helper.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WarmUpSlider extends StatelessWidget {
  const WarmUpSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<WarmUpModel>>(
      future: JsonHelper.getWarmupWorkouts(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
          return const Center(child: Text('No workouts found.'));
        } else {
          final warmUpData = snapshot.data!;

          return SizedBox(
            height: 86.h,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: warmUpData.length,
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              itemBuilder: (context, index) {
                final warmUp = warmUpData[index];
                return WarmUpCard(warmUpModel: warmUp);
              },
              separatorBuilder: (context, rowIndex) => SizedBox(width: 16.w),
            ),
          );
        }
      },
    );
  }

}
import 'dart:ui';

import 'package:fitness_app_ui_kit/components/main/details/workout_analytic_card.dart';
import 'package:fitness_app_ui_kit/models/popular_workouts_model.dart';
import 'package:fitness_app_ui_kit/utils/static/app_assets.dart';
import 'package:fitness_app_ui_kit/utils/static/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WorkoutAnalyticBox extends StatelessWidget {
  const WorkoutAnalyticBox({
    super.key,
    required this.popularWorkoutsModel,
  });

  final PopularWorkoutsModel? popularWorkoutsModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64.h,
      width: 258.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.sp),
        color: AppColors.kThirdGreyCardColor,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15.sp),
        child: Stack(
          children: [
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 16, sigmaY: 16),
              blendMode: BlendMode.srcOver,
              child: Container(
                color: Colors.transparent,
              ),
            ),
            // Content layer
            Padding(
              padding: EdgeInsets.all(14.w),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  WorkoutAnalyticCard(
                    title: 'Time',
                    record: '${popularWorkoutsModel?.duration}',
                    icon: AppAssets.timer,
                  ),
                  VerticalDivider(
                    width: 1.w,
                    color: AppColors.kDividerColor,
                  ),
                  WorkoutAnalyticCard(
                    title: 'Burn',
                    record: '${popularWorkoutsModel?.calories}',
                    icon: AppAssets.burn,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
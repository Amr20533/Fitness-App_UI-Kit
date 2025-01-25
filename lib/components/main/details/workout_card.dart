import 'package:fitness_app_ui_kit/models/workout_model.dart';
import 'package:fitness_app_ui_kit/utils/static/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WorkoutCard extends StatelessWidget {
  const WorkoutCard({
    super.key,
    required this.workoutModel,
  });

  final WorkoutModel workoutModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 74.h,
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
      decoration: BoxDecoration(
          color: AppColors.kGreyColor,
          borderRadius: BorderRadius.circular(15.sp)
      ),
      child: Row(
        spacing: 12.w,
        children: [
          Container(
            height: 58.h,
            width: 58.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7.5.sp),
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(workoutModel.image),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 130.w,
                child: Text(
                  workoutModel.title,
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(fontSize: 16.sp, color: AppColors.kPrimaryWhiteColor),
                ),
              ),
              SizedBox(
                width: 130.w,
                child: Text(
                  workoutModel.duration,
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall!
                      .copyWith(fontSize: 13.sp, color: AppColors.kSecWhiteColor),
                ),
              ),
            ],
          ),
          const Spacer(),
          Container(
            height: 28.w,
            width: 28.w,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.kSecondaryBlackColor
            ),
            child: Icon(Icons.play_arrow_rounded, color: AppColors.kSecondaryColor, size: 18.sp),
          ),
        ],
      ),
    );
  }
}

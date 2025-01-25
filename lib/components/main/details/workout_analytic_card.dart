import 'package:fitness_app_ui_kit/utils/static/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WorkoutAnalyticCard extends StatelessWidget {
  const WorkoutAnalyticCard({
    super.key, required this.title, required this.record, required this.icon,
  });
  final String title;
  final String record;
  final String icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 8.w,
      children: [
        Container(
          height: 32.h,
          width: 32.w,
          padding: EdgeInsets.all(4.w),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.sp),
              color: AppColors.kSecondaryColor
          ),
          child: Image.asset(icon, fit: BoxFit.cover,),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 7.h,
          children: [
            Text(title, style: Theme.of(context).textTheme.titleLarge!.copyWith(color: AppColors.kWhiteColor, fontSize: 10.sp)),
            Text(record, style: Theme.of(context).textTheme.titleLarge!.copyWith(color: AppColors.kSecondaryColor, fontSize: 12.sp)),
          ],
        )
      ],
    );
  }
}
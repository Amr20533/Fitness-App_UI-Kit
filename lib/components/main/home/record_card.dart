import 'package:fitness_app_ui_kit/utils/static/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RecordCard extends StatelessWidget {
  const RecordCard({
    super.key,
    required this.record,
    required this.icon,
  });

  final String icon;
  final String record;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 6.h),
      decoration: BoxDecoration(
          color: AppColors.kLightWhiteCardColor,
          borderRadius: BorderRadius.circular(9.sp)
      ),
      child: Row(
        spacing: 4.w,
        children: [
          Image.asset(icon),
          Text(record, style: Theme.of(context).textTheme.titleMedium!.copyWith(fontSize: 12.sp),),
        ],
      ),
    );
  }
}

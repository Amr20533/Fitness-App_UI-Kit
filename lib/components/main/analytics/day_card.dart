import 'package:fitness_app_ui_kit/utils/static/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DayCard extends StatelessWidget {
  const DayCard({
    super.key,
    required this.onTap,
    this.isSelected = false,
  });

  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 65.w,
        alignment: Alignment.topCenter,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 50.w,
              height: 50.w,
              padding: EdgeInsets.symmetric(vertical: 4.h),
              decoration: BoxDecoration(
                color: isSelected ? AppColors.kPrimaryColor : AppColors.kSecondaryColor,
                borderRadius: BorderRadius.circular(12.sp),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("W", style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: 14.sp, color: isSelected ? AppColors.kWhiteColor : AppColors.kSecondaryBlackColor)),
                  Text("10", style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: 14.sp, color: isSelected ? AppColors.kWhiteColor : AppColors.kSecondaryBlackColor)),
                ],
              ),
            ),
            CircleAvatar(
              radius: 3.5.sp,
              backgroundColor: isSelected ? AppColors.kSecondaryBlackColor : Colors.transparent,
            )
          ],
        ),
      ),
    );
  }
}
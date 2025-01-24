import 'package:fitness_app_ui_kit/utils/static/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg_flutter.dart';

class CustomReportCard extends StatelessWidget {
  const CustomReportCard({
    super.key,
    required this.title,
    required this.icon,
    required this.child,
    required this.color,
    required this.backgroundColor,
    this.textColor = AppColors.kSecondaryBlackColor,
  });
  final String title;
  final String icon;
  final Widget child;
  final Color color;
  final Color backgroundColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12.h),
      decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(15.sp)
      ),
      child: Column(
        spacing: 12.h,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            spacing: 8.w,
            children: [
              Container(
                width: 28.w,
                height: 28.w,
                padding: EdgeInsets.all(4.w),
                decoration: BoxDecoration(
                    color: color,
                    borderRadius: BorderRadius.circular(3.sp)
                ),
                child: SvgPicture.asset(icon),
              ),
              Text(title, style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.w900, color: textColor, fontSize: 18.sp)),
            ],
          ),
          child
        ],
      ),
    );
  }
}

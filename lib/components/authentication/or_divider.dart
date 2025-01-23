import 'package:fitness_app_ui_kit/utils/static/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 18.w,
      children: [
        Expanded(
          child: Container(
            height: 1.5.h,
            color: AppColors.kPrimaryWhiteColor,
          ),
        ),
        Text(text, style: Theme.of(context).textTheme.titleSmall!.copyWith(color: AppColors.kPrimaryWhiteColor)),
        Expanded(
          child: Container(
            height: 1.5.h,
            color: AppColors.kPrimaryWhiteColor,
          ),
        ),
      ],
    );
  }
}
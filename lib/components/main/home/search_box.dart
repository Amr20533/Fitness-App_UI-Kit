import 'package:fitness_app_ui_kit/utils/static/app_assets.dart';
import 'package:fitness_app_ui_kit/utils/static/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg_flutter.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 48.h,
      margin: EdgeInsets.symmetric(horizontal: 20.w),
      padding: EdgeInsets.symmetric(horizontal: 12.w),
      decoration: BoxDecoration(
        color: AppColors.kPrimaryWhiteColor,
        borderRadius: BorderRadius.circular(12.sp),
      ),
      child: Row(
        spacing: 10.w,
        children: [
          SvgPicture.asset(AppAssets.search),
          Text("Search", style: Theme.of(context).textTheme.titleSmall,)
        ],
      ),
    );
  }
}
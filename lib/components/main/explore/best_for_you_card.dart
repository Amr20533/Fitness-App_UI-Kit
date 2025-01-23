import 'package:fitness_app_ui_kit/components/main/explore/info_card.dart';
import 'package:fitness_app_ui_kit/models/best_for_you/best_for_you_model.dart';
import 'package:fitness_app_ui_kit/utils/static/app_colors.dart';
import 'package:fitness_app_ui_kit/utils/static/app_context.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BestForYouCard extends StatelessWidget {
  const BestForYouCard({
    super.key,
    required this.bestForYou,
  });

  final BestForYouModel bestForYou;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 86.h,
      width: 250.w,
      padding: EdgeInsets.symmetric(horizontal: 7.w, vertical: 7.h),
      decoration: BoxDecoration(
        color: AppColors.kPrimaryWhiteColor,
        borderRadius: BorderRadius.circular(9.sp),
      ),
      child: Row(
        spacing: 12.w,
        children: [
          Container(
            height: 72.h,
            width: 72.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4.sp),
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(bestForYou.image),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 150.w,
                child: Text(
                  bestForYou.title,
                  style: Theme.of(AppContext.context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(fontSize: 13.sp),
                ),
              ),
              InfoCard(text: bestForYou.duration),
              InfoCard(text: bestForYou.level),
            ],
          ),
        ],
      ),
    );
  }
}

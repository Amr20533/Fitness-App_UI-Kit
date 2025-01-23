import 'package:fitness_app_ui_kit/components/main/home/record_card.dart';
import 'package:fitness_app_ui_kit/models/today_plan_model.dart';
import 'package:fitness_app_ui_kit/utils/static/app_assets.dart';
import 'package:fitness_app_ui_kit/utils/static/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class TodayPlanCard extends StatelessWidget {
  const TodayPlanCard({
    super.key,
    required this.plan,
  });

  final TodayPlanModel plan;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      alignment: AlignmentDirectional.topEnd,
      children: [
        Container(
          height: 120.h,
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
          decoration: BoxDecoration(
            color: AppColors.kPrimaryWhiteColor,
            borderRadius: BorderRadius.circular(26.sp)
          ),
          child: Row(
            spacing: 12.w,
            children: [
              Container(
                height: 100.h,
                width: 110.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14.sp),
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(plan.image),
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 198.w,
                    child: Text(
                      plan.exercise,
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(fontSize: 16.sp),
                    ),
                  ),
                  SizedBox(
                    width: 198.w,
                    child: Text(
                      plan.description,
                      style: Theme.of(context)
                          .textTheme
                          .titleSmall!
                          .copyWith(fontSize: 13.sp),
                    ),
                  ),
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      LinearPercentIndicator(
                        width: 200.w,
                        lineHeight: 16.h,
                        percent: plan.progress / 100,
                        backgroundColor: AppColors.kSecondaryBlackColor,
                        progressColor: AppColors.kSecondaryColor,
                        animation: true,
                        padding: EdgeInsets.zero,
                        barRadius: Radius.circular(3.sp),
                        animationDuration: 2000,
                      ),
                      Positioned.fill(
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            '${plan.progress}%',
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .copyWith(fontSize: 12.sp, color: AppColors.kPrimaryWhiteColor), // White text over the bar
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 2.h),
          decoration: BoxDecoration(
            color: AppColors.kPrimaryBlackColor,
            borderRadius: BorderRadiusDirectional.only(topEnd: Radius.circular(10.sp),bottomStart: Radius.circular(10.sp),)
          ),
          child: Text(plan.level, style: Theme.of(context).textTheme.titleSmall!.copyWith(color: AppColors.kPrimaryWhiteColor, fontSize: 10.sp),),
        )
      ],
    );
  }
}

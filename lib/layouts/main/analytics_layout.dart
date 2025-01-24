import 'package:fitness_app_ui_kit/components/main/analytics/bpm_chart.dart';
import 'package:fitness_app_ui_kit/components/main/analytics/custom_report_card.dart';
import 'package:fitness_app_ui_kit/components/main/analytics/day_selector_slider.dart';
import 'package:fitness_app_ui_kit/components/main/analytics/sleep_bar_chart.dart';
import 'package:fitness_app_ui_kit/components/main/home/popular_workout_slider.dart';
import 'package:fitness_app_ui_kit/components/main/home/search_box.dart';
import 'package:fitness_app_ui_kit/components/main/home/today_plan_slider.dart';
import 'package:fitness_app_ui_kit/components/shared_components/custom_title.dart';
import 'package:fitness_app_ui_kit/utils/helpers/format_helper.dart';
import 'package:fitness_app_ui_kit/utils/static/app_assets.dart';
import 'package:fitness_app_ui_kit/utils/static/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:svg_flutter/svg.dart';

class AnalyticsLayout extends StatelessWidget {
  const AnalyticsLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        spacing: 20.h,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.fromLTRB(20.w, 20.h, 20.w, 12.h),
                child: Text(FormatHelper.formatDateToMonthYear(DateTime.now().toString()), style: Theme.of(context).textTheme.headlineSmall!.copyWith(fontSize: 18.sp, color: AppColors.kPrimaryBlackColor)),
              ),
              DaySelectorSlider(),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 4.h),
            child: CustomTitle(title: "Today Report"),
          ),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Row(
              spacing: 16.w,
              children: [
                Column(
                  spacing: 16.h,
                  children: [
                    Container(
                      width: 112.w,
                      height: 70.w,
                      padding: EdgeInsets.all(12.w),
                      decoration: BoxDecoration(
                          color: AppColors.kGreyCardColor,
                          border: Border.all(color: AppColors.kGreyBorderColor, width: 1.w),
                          borderRadius: BorderRadius.circular(12.sp)
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Active calories", style: Theme.of(context).textTheme.titleLarge!.copyWith(color: AppColors.kGreyTextColor, fontSize: 13.sp)),
                          Text("645 Cal", style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: AppColors.kSecondaryBlackColor, fontSize: 16.sp))
                        ],
                      ),
                    ),
                    Container(
                      width: 112.w,
                      height: 132.w,
                      padding: EdgeInsets.all(12.w),
                      decoration: BoxDecoration(
                          color: AppColors.kLightPurpleColor,
                          borderRadius: BorderRadius.circular(12.sp)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Training time", style: Theme.of(context).textTheme.titleLarge!.copyWith(color: AppColors.kSecondaryBlackColor, fontSize: 13.sp)),
                          CircularPercentIndicator(
                            radius: 38.sp,
                            lineWidth: 12.sp,
                            percent: 0.8,
                            animation: true,
                            animationDuration: 2000,
                            backgroundColor: AppColors.kWhiteColor,
                            progressColor: AppColors.kPurpleColor,
                            circularStrokeCap: CircularStrokeCap.round,
                            center: Text(
                              '80%',
                              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                fontSize: 14.sp,
                                color: AppColors.kPurpleColor,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),

                  ],
                ),
                CustomReportCard(
                  title: 'Cycling',
                  icon: AppAssets.cycle,
                    color: AppColors.kSecondaryGreyColor,
                    backgroundColor: AppColors.kSecondaryBlackColor,
                    textColor: AppColors.kSecondaryGreyColor,
                    child: Image.asset(AppAssets.map)
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 16.w,
              children: [
                Flexible(
                  child: CustomReportCard(
                    title: 'Hearth Rate',
                    icon: AppAssets.heartRate,
                    color: AppColors.kRedCardColor,
                    backgroundColor: AppColors.kSecLightRedColor,
                    child: Container(
                      height: 99.h,
                      margin: EdgeInsets.only(top: 5.h),
                      decoration: BoxDecoration(
                        color: AppColors.kWhiteColor,
                        borderRadius: BorderRadius.circular(7.sp)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // BPMChart(),
                          Align(
                            alignment: AlignmentDirectional.bottomEnd,
                            child: Text("79 Bpm", style: Theme.of(context).textTheme.bodySmall!.copyWith(fontSize: 10.sp), textAlign: TextAlign.end,),
                          )
                        ],
                      ),
                    )
                  ),
                ),
                Column(
                  spacing: 16.h,
                  children: [
                    CustomReportCard(
                    title: 'Steps',
                    icon: AppAssets.steps,
                    color: AppColors.kAmberColor,
                    backgroundColor: AppColors.kLightAmberColor,
                    child: Column(
                      spacing: 4.h,
                      children: [
                        Text("999/2000", style: Theme.of(context).textTheme.bodySmall!.copyWith(fontSize: 13.sp),textAlign: TextAlign.center,),
                        LinearPercentIndicator(
                          width: 111.w,
                          lineHeight: 12.h,
                          percent: 0.5,
                          backgroundColor: AppColors.kInactiveAmberProgressColor,
                          progressColor: AppColors.kActiveAmberProgressColor,
                          animation: true,
                          padding: EdgeInsets.zero,
                          barRadius: Radius.circular(25.sp),
                          animationDuration: 2000,
                        ),
                      ],
                    )
                  ),
                    Container(
                      width: 135.w,
                      height: 51.h,
                      padding: EdgeInsets.all(12.w),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: AppColors.kLightRedColor,
                          borderRadius: BorderRadius.circular(12.sp)
                      ),
                      child: Text("Keep it Up! 💪", style: Theme.of(context).textTheme.bodySmall!.copyWith(color: AppColors.kSecondaryBlackColor, fontSize: 16.sp),
                      textAlign: TextAlign.center,
                      ),
                    ),

                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 16.w,
              children: [
                Expanded(
                  child: CustomReportCard(
                      title: 'Sleep',
                      icon: AppAssets.sleep,
                      color: AppColors.kPurpleCardColor,
                      backgroundColor: AppColors.kSecLightPurpleColor,
                      child: Container(
                        height: 58.h,
                        margin: EdgeInsets.only(top: 5.h),
                        child: SleepBarChart(),

                      )
                  ),
                ),
                Expanded(
                  child: CustomReportCard(
                      title: 'Water',
                      icon: AppAssets.water,
                      color: AppColors.kCyanCardColor,
                      backgroundColor: AppColors.kLightCyanColor,
                      child: Container(
                        height: 58.h,
                        margin: EdgeInsets.only(top: 5.h),
                        decoration: BoxDecoration(
                            color: AppColors.kWhiteColor,
                            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(7.sp), bottomRight: Radius.circular(7.sp))
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [

                          ],
                        ),
                      )
                  ),
                ),
              ],
            ),
          )

        ],
      ),
    );
  }
}



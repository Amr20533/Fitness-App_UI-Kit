import 'package:fitness_app_ui_kit/components/main/explore/best_for_you_wrapper.dart';
import 'package:fitness_app_ui_kit/components/main/explore/challenges_slider.dart';
import 'package:fitness_app_ui_kit/components/main/explore/warm_up_slider.dart';
import 'package:fitness_app_ui_kit/components/shared_components/custom_text_button.dart';
import 'package:fitness_app_ui_kit/components/shared_components/custom_title.dart';
import 'package:fitness_app_ui_kit/utils/static/app_assets.dart';
import 'package:fitness_app_ui_kit/utils/static/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ExploreLayout extends StatelessWidget {
  const ExploreLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        spacing: 20.h,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              width: double.infinity,
              height: 180.h,
              margin: EdgeInsetsDirectional.only(top: 30.h, start: 22.w, end: 22.w),
              decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(23.sp),
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(AppAssets.exploreHeader))
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(23.sp),
              child: Stack(
                children: [
                  ShaderMask(
                    shaderCallback: (bounds) => AppColors.blackGradient.createShader(bounds),
                    blendMode: BlendMode.dstIn,
                    child: Container(
                      color: AppColors.kShaderColor,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 26.h, vertical: 24.h),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                            width: 200.w,
                            child: Text('Best Quarantine Workout', style: Theme.of(context).textTheme.headlineSmall!.copyWith(fontSize: 24.sp))),
                        CustomTextButton(
                          onPressed: (){

                          },
                          hasArrow: true,
                          color: AppColors.kSecondaryColor,
                          text: "See more",
                        ),

                      ],
                    ),
                  ),
                ],
              ),
            )
          ),
          CustomTitle(title: "Best for you"),
          BestForYouWrapper(),
          CustomTitle(title: "Challenge"),
          ChallengesSlider(),
          CustomTitle(title: "Fast Warmup"),
          WarmUpSlider(),

        ],
      ),
    );
  }
}





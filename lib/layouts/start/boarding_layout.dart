import 'package:fitness_app_ui_kit/components/shared_components/custom_rounded_button.dart';
import 'package:fitness_app_ui_kit/utils/static/app_assets.dart';
import 'package:fitness_app_ui_kit/utils/static/app_colors.dart';
import 'package:fitness_app_ui_kit/utils/static/app_context.dart';
import 'package:fitness_app_ui_kit/utils/static/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/percent_indicator.dart';

class BoardingLayout extends StatelessWidget {
  const BoardingLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kPrimaryWhiteColor,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 500.h,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                    image: AssetImage(AppAssets.boarding)
                )
              ),
            ),
            Container(
              width: 263.w,
              margin: EdgeInsets.symmetric(vertical: 22.h),
              child: Text('Wherever Your Health Is Number One For Us', style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: AppColors.kBlackColor, fontSize: 24.sp), textAlign: TextAlign.center),
            ),
            Flexible(
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 22.w),
                decoration: BoxDecoration(
                  color: AppColors.kBgColor,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('There is no instant way to a healthy life', style: Theme.of(context).textTheme.titleMedium!.copyWith(fontSize: 15.sp), textAlign: TextAlign.center),
                    Container(
                      width: 65.w,
                      alignment: Alignment.center,
                      child: LinearPercentIndicator(
                        width: 65.w,
                        lineHeight: 5.h,
                        percent: 1.0,
                        backgroundColor: AppColors.kSecondaryBlackColor,
                        progressColor: AppColors.kSecondaryColor,
                        animation: true,
                        animationDuration: 2000,
                      ),
                    ),
                    CustomRoundedButton(
                        onPressed: (){
                          AppContext.navigatorKey.currentState?.pushReplacementNamed(AppRoutes.loginSignup);
                        },
                        text: 'Get Started'
                    )
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}


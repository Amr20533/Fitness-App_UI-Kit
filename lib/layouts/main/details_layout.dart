import 'package:fitness_app_ui_kit/components/main/details/workout_analytic_box.dart';
import 'package:fitness_app_ui_kit/components/main/details/workout_card.dart';
import 'package:fitness_app_ui_kit/models/popular_workouts_model.dart';
import 'package:fitness_app_ui_kit/utils/static/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailsLayout extends StatelessWidget {
  const DetailsLayout({super.key, required this.popularWorkoutsModel});
  final PopularWorkoutsModel? popularWorkoutsModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kBlackColor,
      appBar: AppBar(
        leading: GestureDetector(
          onTap: ()=> Navigator.pop(context),
          child: Icon(Icons.arrow_back_ios, color: AppColors.kPrimaryWhiteColor,),
        ),
        centerTitle: true,
        elevation: 0,
        scrolledUnderElevation: 0,
        backgroundColor: AppColors.kBlackColor,
        title: Text("Workout", style: Theme.of(context).textTheme.titleLarge!.copyWith(color: AppColors.kPrimaryWhiteColor)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 280.h,
                width: double.infinity,
                margin: EdgeInsets.only(top: 10.h, bottom: 24.h),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(23.sp),
                ),
                child: Stack(
                  alignment: AlignmentDirectional.topStart,
                  children: [
                    Container(
                      height: 250.h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(23.sp),
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage(popularWorkoutsModel!.background),
                        ),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(23.sp),
                        child: ShaderMask(
                          shaderCallback: (bounds) => AppColors.secBlackGradient.createShader(bounds),
                          blendMode: BlendMode.dstIn,
                          child: Container(
                            color: AppColors.kShaderColor,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: WorkoutAnalyticBox(popularWorkoutsModel: popularWorkoutsModel),
                    ),
                  ],
                ),
              ),
              Text('${popularWorkoutsModel?.title}', style: Theme.of(context).textTheme.headlineMedium!.copyWith(color: AppColors.kWhiteColor, fontSize: 24.sp)),
              Padding(
                padding: EdgeInsets.only(top: 17.h),
                child: Text('${popularWorkoutsModel?.description}',
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(color: AppColors.kSecWhiteColor, fontSize: 15.sp),
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 40.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Rounds", style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: AppColors.kWhiteColor, fontSize: 20.sp)),
                    RichText(text: TextSpan(
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(color: AppColors.kWhiteColor),
                      children: [
                        TextSpan(text: '1', style: TextStyle(fontSize: 16.sp)),
                        TextSpan(text: ' /8', style: TextStyle(fontSize: 12.sp)),
                      ]
                    ))
                  ],
                ),
              ),
              ListView.separated(
                itemCount: popularWorkoutsModel!.workouts.length,
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                padding: EdgeInsets.symmetric(vertical: 22.h),
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  final workout = popularWorkoutsModel!.workouts[index];
                  return WorkoutCard(workoutModel: workout);
                },
                separatorBuilder: (context, index) => SizedBox(height: 16.w,),
              )
            ],
          ),
        ),
      ),
    );
  }
}
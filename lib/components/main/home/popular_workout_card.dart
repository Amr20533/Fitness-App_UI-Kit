import 'package:fitness_app_ui_kit/components/main/home/record_card.dart';
import 'package:fitness_app_ui_kit/models/popular_workouts_model.dart';
import 'package:fitness_app_ui_kit/utils/static/app_assets.dart';
import 'package:fitness_app_ui_kit/utils/static/app_colors.dart';
import 'package:fitness_app_ui_kit/utils/static/app_context.dart';
import 'package:fitness_app_ui_kit/utils/static/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PopularWorkoutCard extends StatelessWidget {
  const PopularWorkoutCard({
    super.key,
    required this.workout,
  });

  final PopularWorkoutsModel workout;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        AppContext.navigatorKey.currentState?.pushNamed(AppRoutes.details, arguments: workout,);
      },
      child: Container(
        height: 180.h,
        width: 280.w,
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 12.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(23.sp),
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(workout.image),
          ),
        ),
        child: Stack(
          children: [
            ShaderMask(
              shaderCallback: (bounds) => AppColors.blackGradient.createShader(bounds),
              blendMode: BlendMode.dstIn,
              child: Container(
                color: Colors.black,
              ),
            ),
            Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 138.w,
                      child: Text(
                        workout.title,
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall!
                            .copyWith(fontSize: 24.sp),
                      ),
                    ),
                    SizedBox(height: 6.h),
                    RecordCard(icon: AppAssets.calorie, record: workout.calories),
                    RecordCard(icon: AppAssets.timer, record: workout.duration),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

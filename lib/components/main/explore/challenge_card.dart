import 'package:fitness_app_ui_kit/components/main/explore/info_card.dart';
import 'package:fitness_app_ui_kit/models/best_for_you_model.dart';
import 'package:fitness_app_ui_kit/models/challenges_model.dart';
import 'package:fitness_app_ui_kit/utils/static/app_colors.dart';
import 'package:fitness_app_ui_kit/utils/static/app_context.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChallengeCard extends StatelessWidget {
  const ChallengeCard({
    super.key,
    required this.challengesModel,
    required this.color,
    required this.textColor,
  });

  final ChallengesModel challengesModel;
  final Color color;
  final Color textColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110.h,
      width: 110.w,
      padding: EdgeInsetsDirectional.only(start: 8.w, bottom: 8.h),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(9.sp),
      ),
      child: Stack(
        alignment: AlignmentDirectional.bottomStart,
        children: [
          Align(
            alignment: AlignmentDirectional.bottomEnd,
            child: Container(
              height: 72.h,
              width: 72.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4.sp),
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(challengesModel.image),
                ),
              ),
            ),
          ),

          SizedBox(
            width: 80.w,
            child: Text(
              '${challengesModel.title}\n${challengesModel.type}',
              style: Theme.of(AppContext.context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(fontSize: 14.sp, color: textColor),
            ),
          ),

        ],
      ),
    );
  }
}

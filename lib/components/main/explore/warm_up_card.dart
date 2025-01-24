import 'package:fitness_app_ui_kit/components/main/explore/info_card.dart';
import 'package:fitness_app_ui_kit/models/warm_up_model.dart';
import 'package:fitness_app_ui_kit/utils/static/app_colors.dart';
import 'package:fitness_app_ui_kit/utils/static/app_context.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WarmUpCard extends StatelessWidget {
  const WarmUpCard({
    super.key,
    required this.warmUpModel,
  });

  final WarmUpModel warmUpModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 86.h,
      width: 210.w,
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
                image: AssetImage(warmUpModel.image),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 110.w,
                child: Text(
                  warmUpModel.title,
                  style: Theme.of(AppContext.context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(fontSize: 13.sp),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              InfoCard(text: warmUpModel.duration),
              InfoCard(text: warmUpModel.level),
            ],
          ),
        ],
      ),
    );
  }
}

import 'package:fitness_app_ui_kit/components/main/explore/challenge_card.dart';
import 'package:fitness_app_ui_kit/models/challenges_model.dart';
import 'package:fitness_app_ui_kit/utils/static/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:fitness_app_ui_kit/utils/helpers/json_helper.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChallengesSlider extends StatelessWidget {
  const ChallengesSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ChallengesModel>>(
      future: JsonHelper.getChallengeWorkouts(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
          return const Center(child: Text('No workouts found.'));
        } else {
          final challengeData = snapshot.data!;

          return SizedBox(
            height: 110.h,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: challengeData.length,
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              itemBuilder: (context, index) {
                final challenge = challengeData[index];
                return ChallengeCard(
                    challengesModel: challenge,
                    color: _getCardColor(index),
                    textColor: _getTextColor(index),
                );
              },
              separatorBuilder: (context, rowIndex) => SizedBox(width: 16.w),
            ),
          );
        }
      },
    );
  }
  Color _getCardColor(int index){
    if(index == 0){
      return AppColors.kSecondaryColor;
    }else if(index == 1){
      return AppColors.kPrimaryColor;
    }else{
      return AppColors.kWhiteColor;
    }
  }
  Color _getTextColor(int index){
    if(index == 1){
      return AppColors.kWhiteColor;
    }else{
      return AppColors.kSecondaryBlackColor;
    }
  }

}
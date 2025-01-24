import 'package:fitness_app_ui_kit/components/main/analytics/day_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DaySelectorSlider extends StatefulWidget {
  const DaySelectorSlider({
    super.key,
  });

  @override
  State<DaySelectorSlider> createState() => _DaySelectorSliderState();
}

class _DaySelectorSliderState extends State<DaySelectorSlider> {
  int selectedDay = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 65.w,
      child: ListView.separated(
        itemCount: 16,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        physics: const ClampingScrollPhysics(),
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        itemBuilder: (context, index) {
          bool isSelected = selectedDay == index;
          return DayCard(
              onTap: (){
                setState(() {
                  selectedDay = index;
                });
              },
              isSelected: isSelected
          );
        },
        separatorBuilder: (context, _) => SizedBox(width: 7.w),
      ),
    );
  }
}
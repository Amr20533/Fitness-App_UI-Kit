import 'package:fitness_app_ui_kit/components/main/analytics/day_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DaySelectorSlider extends StatefulWidget {
  const DaySelectorSlider({super.key});

  @override
  State<DaySelectorSlider> createState() => _DaySelectorSliderState();
}

class _DaySelectorSliderState extends State<DaySelectorSlider> {
  int selectedDay = DateTime.now().day - 1;
  late final List<Map<String, String>> daysList;

  @override
  void initState() {
    super.initState();
    _generateDaysForCurrentMonth();
  }


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 65.w,
      child: ListView.separated(
        itemCount: daysList.length,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        physics: const ClampingScrollPhysics(),
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        itemBuilder: (context, index) {
          bool isSelected = selectedDay == index;
          return DayCard(
            onTap: () {
              setState(() {
                selectedDay = index;
              });
            },
            dayLetter: daysList[index]['dayLetter']!,
            dayNumber: daysList[index]['dayNumber']!,
            isSelected: isSelected,
          );
        },
        separatorBuilder: (context, _) => SizedBox(width: 7.w),
      ),
    );
  }
  void _generateDaysForCurrentMonth() {
    DateTime now = DateTime.now();
    int daysInMonth = DateTime(now.year, now.month + 1, 0).day;

    daysList = List.generate(daysInMonth, (index) {
      DateTime day = DateTime(now.year, now.month, index + 1);
      String dayLetter = _getDayLetter(day.weekday);
      return {
        'dayLetter': dayLetter,
        'dayNumber': '${day.day}',
      };
    });
  }

  String _getDayLetter(int weekday) {
    switch (weekday) {
      case DateTime.monday:
        return 'M';
      case DateTime.tuesday:
        return 'T';
      case DateTime.wednesday:
        return 'W';
      case DateTime.thursday:
        return 'T';
      case DateTime.friday:
        return 'F';
      case DateTime.saturday:
        return 'S';
      case DateTime.sunday:
        return 'S';
      default:
        return '';
    }
  }

}

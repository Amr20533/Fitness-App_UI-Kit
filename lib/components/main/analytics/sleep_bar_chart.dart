import 'package:fitness_app_ui_kit/utils/static/app_colors.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class SleepBarChart extends StatelessWidget {
  const SleepBarChart({super.key});

  @override
  Widget build(BuildContext context) {
    return BarChart(
      BarChartData(
        maxY: 100,
        minY: 0,
        borderData: FlBorderData(show: false),
        gridData: FlGridData(show: false),
        titlesData: FlTitlesData(show: false),
        barGroups: _generateBarGroups(),
        barTouchData: BarTouchData(enabled: false),
        alignment: BarChartAlignment.spaceBetween,
      ),
    );
  }

  List<BarChartGroupData> _generateBarGroups() {
    final List<double> values = [70, 50, 30, 90, 60, 40, 80, 20, 50, 10, 70];
    final Color activeColor = AppColors.kActivePurpleProgressColor;
    final Color inactiveColor = AppColors.kInactivePurpleProgressColor;

    return List.generate(
      values.length,
          (index) => BarChartGroupData(
        x: index,
        barRods: [
          BarChartRodData(
            toY: values[index],
            width: 8,
            color: activeColor,
            borderRadius: BorderRadius.circular(20),
            backDrawRodData: BackgroundBarChartRodData(
              show: true,
              toY: 100,
              color: inactiveColor,
            ),
          ),
        ],
      ),
    );
  }
}

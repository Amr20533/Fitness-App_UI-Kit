import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class BPMChart extends StatelessWidget {
  const BPMChart({super.key});

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
        alignment: BarChartAlignment.center,
      ),
    );
  }

  List<BarChartGroupData> _generateBarGroups() {
    final List<double> values = [
      20, 50, 10, 70, 40, 15, 55, 30, 25, 60,
      10, 90, 35, 45, 75, 80, 20, 65, 50, 30,
      85, 25, 15, 60, 40
    ];
    final Color activeColor = Colors.purple;

    return List.generate(
      values.length,
          (index) => BarChartGroupData(
        x: index,
        barRods: [
          BarChartRodData(
            toY: values[index],
            width: 4,
            color: activeColor,
            borderRadius: BorderRadius.circular(7),
          ),
        ],
      ),
    );
  }
}

import 'dart:ffi';

class TodayPlanModel {
  final String exercise;
  final String description;
  final String level;
  final String image;
  final double progress;

  TodayPlanModel({
    required this.exercise,
    required this.description,
    required this.level,
    required this.image,
    required this.progress,
  });

  factory TodayPlanModel.fromJson(Map<String, dynamic> json) {
    return TodayPlanModel(
      exercise: json['exercise'] as String,
      description: json['description'] as String,
      level: json['level'] as String,
      image: json['image'] as String,
      progress: json['progress'] as double,
    );
  }
}

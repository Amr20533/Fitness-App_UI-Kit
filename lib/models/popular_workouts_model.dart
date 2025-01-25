import 'package:fitness_app_ui_kit/models/workout_model.dart';

class PopularWorkoutsModel {
  final String title;
  final String calories;
  final String duration;
  final String image;
  final String background;
  final String description;
  final List<WorkoutModel> workouts;

  PopularWorkoutsModel({
    required this.title,
    required this.calories,
    required this.duration,
    required this.image,
    required this.background,
    required this.description,
    required this.workouts,
  });

  factory PopularWorkoutsModel.fromJson(Map<String, dynamic> json) {
    return PopularWorkoutsModel(
      title: json['title'],
      calories: json['calories'],
      duration: json['duration'],
      image: json['image'],
      background: json['background'],
      description: json['description'],
      workouts: (json['workouts'] as List)
          .map((workout) => WorkoutModel.fromJson(workout))
          .toList(),
    );
  }
}

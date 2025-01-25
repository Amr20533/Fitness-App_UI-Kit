class WorkoutModel {
  final String title;
  final String duration;
  final String image;

  WorkoutModel({
    required this.title,
    required this.duration,
    required this.image,
  });

  factory WorkoutModel.fromJson(Map<String, dynamic> json) {
    return WorkoutModel(
      title: json['title'],
      duration: json['duration'],
      image: json['image'],
    );
  }
}


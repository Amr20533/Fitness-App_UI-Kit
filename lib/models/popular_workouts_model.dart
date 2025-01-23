
class PopularWorkoutsModel {
  final String title;
  final String calories;
  final String duration;
  final String image;
  final String description;

  PopularWorkoutsModel({
    required this.title,
    required this.calories,
    required this.duration,
    required this.image,
    required this.description,
  });

  factory PopularWorkoutsModel.fromJson(Map<String, dynamic> json) {
    return PopularWorkoutsModel(
      title: json['title'],
      calories: json['calories'],
      duration: json['duration'],
      image: json['image'],
      description: json['description'],
    );
  }
}

class BestForYouModel {
  final String title;
  final String duration;
  final String level;
  final String image;
  final String description;

  BestForYouModel({
    required this.title,
    required this.duration,
    required this.level,
    required this.image,
    required this.description,
  });

  factory BestForYouModel.fromJson(Map<String, dynamic> json) {
    return BestForYouModel(
      title: json['title'],
      duration: json['duration'],
      level: json['level'],
      image: json['image'],
      description: json['description'],
    );
  }
}
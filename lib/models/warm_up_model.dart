class WarmUpModel {
  final String title;
  final String duration;
  final String level;
  final String image;
  final String description;

  WarmUpModel({
    required this.title,
    required this.duration,
    required this.level,
    required this.image,
    required this.description,
  });

  factory WarmUpModel.fromJson(Map<String, dynamic> json) {
    return WarmUpModel(
      title: json['title'],
      duration: json['duration'],
      level: json['level'],
      image: json['image'],
      description: json['description'],
    );
  }
}
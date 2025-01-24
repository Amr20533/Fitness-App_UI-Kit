class ChallengesModel {
  final String title;
  final String type;
  final String image;
  final String description;

  ChallengesModel({
    required this.title,
    required this.type,
    required this.image,
    required this.description,
  });

  factory ChallengesModel.fromJson(Map<String, dynamic> json) {
    return ChallengesModel(
      title: json['title'],
      type: json['type'],
      image: json['image'],
      description: json['description'],
    );
  }
}
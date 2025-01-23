import 'package:fitness_app_ui_kit/models/best_for_you/best_for_you_model.dart';

class BestForYouResponse {
  final List<BestForYouModel> data;

  BestForYouResponse({required this.data});

  factory BestForYouResponse.fromJson(Map<String, dynamic> json) {
    var list = json['data'] as List;
    List<BestForYouModel> workouts =
    list.map((item) => BestForYouModel.fromJson(item)).toList();

    return BestForYouResponse(data: workouts);
  }
}

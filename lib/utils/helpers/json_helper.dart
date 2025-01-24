import 'dart:convert';

import 'package:fitness_app_ui_kit/models/best_for_you_model.dart';
import 'package:fitness_app_ui_kit/models/challenges_model.dart';
import 'package:fitness_app_ui_kit/models/popular_workouts_model.dart';
import 'package:fitness_app_ui_kit/models/today_plan_model.dart';
import 'package:fitness_app_ui_kit/models/warm_up_model.dart';
import 'package:fitness_app_ui_kit/utils/static/app_context.dart';
import 'package:flutter/material.dart';

class JsonHelper{
  static Future<List<PopularWorkoutsModel>> getPopularWorkouts() async {

    final String response =
    await DefaultAssetBundle.of(AppContext.context).loadString('assets/json/popular_workouts.json');
    final data = jsonDecode(response);

    return (data['data'] as List)
        .map((workout) => PopularWorkoutsModel.fromJson(workout))
        .toList();
  }

  static Future<List<TodayPlanModel>> getTodayPlanWorkouts() async {

    final String response =
    await DefaultAssetBundle.of(AppContext.context).loadString('assets/json/today_plan.json');
    final data = jsonDecode(response);

    return (data['data'] as List)
        .map((workout) => TodayPlanModel.fromJson(workout))
        .toList();
  }

  static Future<List<BestForYouModel>> getBestForYouWorkouts() async {

    final String response =
    await DefaultAssetBundle.of(AppContext.context).loadString('assets/json/best_for_you_workouts.json');
    final data = jsonDecode(response);

    return (data['data'] as List)
        .map((workout) => BestForYouModel.fromJson(workout))
        .toList();
  }


  static Future<List<WarmUpModel>> getWarmupWorkouts() async {

    final String response =
    await DefaultAssetBundle.of(AppContext.context).loadString('assets/json/warm_up.json');
    final data = jsonDecode(response);

    return (data['data'] as List)
        .map((workout) => WarmUpModel.fromJson(workout))
        .toList();
  }

  static Future<List<ChallengesModel>> getChallengeWorkouts() async {

    final String response =
    await DefaultAssetBundle.of(AppContext.context).loadString('assets/json/challenges.json');
    final data = jsonDecode(response);

    return (data['data'] as List)
        .map((workout) => ChallengesModel.fromJson(workout))
        .toList();
  }

}
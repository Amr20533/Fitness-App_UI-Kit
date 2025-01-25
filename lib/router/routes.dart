import 'package:fitness_app_ui_kit/layouts/authentication/login_layout.dart';
import 'package:fitness_app_ui_kit/layouts/authentication/login_sign_up_layout.dart';
import 'package:fitness_app_ui_kit/layouts/authentication/signup_layout.dart';
import 'package:fitness_app_ui_kit/layouts/main/details_layout.dart';
import 'package:fitness_app_ui_kit/layouts/main/main_layout.dart';
import 'package:fitness_app_ui_kit/layouts/start/boarding_layout.dart';
import 'package:fitness_app_ui_kit/layouts/start/splash_layout.dart';
import 'package:fitness_app_ui_kit/models/popular_workouts_model.dart';
import 'package:fitness_app_ui_kit/utils/static/app_routes.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRoutes.splash : (context)=> SplashLayout(),
  AppRoutes.boarding : (context)=> BoardingLayout(),
  AppRoutes.loginSignup : (context)=> LoginSignUpLayout(),
  AppRoutes.login : (context)=> LoginLayout(),
  AppRoutes.signup : (context)=> SignupLayout(),
  AppRoutes.main : (context)=> MainLayout(),
  AppRoutes.details : (context) {
    final args = ModalRoute.of(context)!.settings.arguments as PopularWorkoutsModel?;
    return DetailsLayout(popularWorkoutsModel: args);
  },

};
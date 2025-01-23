import 'package:fitness_app_ui_kit/layouts/authentication/login_sign_up_layout.dart';
import 'package:fitness_app_ui_kit/layouts/start/boarding_layout.dart';
import 'package:fitness_app_ui_kit/layouts/start/splash_layout.dart';
import 'package:fitness_app_ui_kit/utils/static/app_routes.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRoutes.splash : (context)=> SplashLayout(),
  AppRoutes.boarding : (context)=> BoardingLayout(),
  AppRoutes.loginSignup : (context)=> LoginSignUpLayout(),

};
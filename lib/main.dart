import 'package:fitness_app_ui_kit/layouts/start/splash_layout.dart';
import 'package:fitness_app_ui_kit/utils/themes/light_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fitness App',
      theme: lightTheme,
      home: SplashLayout(),
    );
  }
}
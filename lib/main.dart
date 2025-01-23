import 'package:fitness_app_ui_kit/layouts/start/splash_layout.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fitness App',
      theme: ThemeData(
        textTheme: GoogleFonts.latoTextTheme(

        )
      ),
      home: SplashLayout(),
    );
  }
}
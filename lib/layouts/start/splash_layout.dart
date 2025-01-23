import 'package:fitness_app_ui_kit/utils/static/app_colors.dart';
import 'package:fitness_app_ui_kit/utils/static/app_context.dart';
import 'package:fitness_app_ui_kit/utils/static/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class SplashLayout extends StatefulWidget {
  const SplashLayout({super.key});

  @override
  State<SplashLayout> createState() => _SplashLayoutState();
}

class _SplashLayoutState extends State<SplashLayout> {

  @override
  void initState() {
    _navigateToBoarding();
    super.initState();
  }

  void _navigateToBoarding(){
    Future.delayed(
      const Duration(seconds: 4),
          () {
            AppContext.navigatorKey.currentState?.pushReplacementNamed(AppRoutes.boarding);
          },
    );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: AppColors.kPrimaryColor,
      body: Center(
        child: AnimatedTextKit(
          animatedTexts: [
            TypewriterAnimatedText(
              'Core Craft',
              textStyle: Theme.of(context)
                  .textTheme
                  .headlineLarge!
                  .copyWith(color: AppColors.kPrimaryWhiteColor, fontSize: 36),
              speed: const Duration(milliseconds: 150), // Typing speed
            ),
          ],
          totalRepeatCount: 1,
        ),
      ),
    );
  }
}
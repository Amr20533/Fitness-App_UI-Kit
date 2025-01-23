import 'package:fitness_app_ui_kit/router/routes.dart';
import 'package:fitness_app_ui_kit/utils/static/app_context.dart';
import 'package:fitness_app_ui_kit/utils/static/app_routes.dart';
import 'package:fitness_app_ui_kit/utils/themes/light_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: MediaQuery.of(context).size,
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_ , child) {
        return MaterialApp(
          navigatorKey: AppContext.navigatorKey,
          debugShowCheckedModeBanner: false,
          title: 'Fitness App',
          theme: lightTheme,
          initialRoute: AppRoutes.splash,
          routes: routes,
        );
      },
    );
  }
}
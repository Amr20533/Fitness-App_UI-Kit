import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fitness_app_ui_kit/utils/static/app_colors.dart';

ThemeData get lightTheme => ThemeData(
    textTheme: GoogleFonts.latoTextTheme(
        TextTheme(
          headlineLarge: TextStyle(
              color: Colors.black,
              fontSize: 30.sp,
              fontWeight: FontWeight.w900
          ),
          headlineMedium: TextStyle(
              color: AppColors.kWhiteColor,
              fontSize: 28.sp,
              fontWeight: FontWeight.w900
          ),
          headlineSmall: TextStyle(
              color: AppColors.kWhiteColor,
              fontSize: 26.sp,
              fontWeight: FontWeight.w900
          ),
          bodyLarge: TextStyle(
              color: AppColors.kWhiteColor,
              fontSize: 24.sp,
              fontWeight: FontWeight.w800
          ),
          bodyMedium: TextStyle(
              color: AppColors.kWhiteColor,
              fontSize: 22.sp,
              fontWeight: FontWeight.w700
          ),
          bodySmall: TextStyle(
              color: AppColors.kWhiteColor,
              fontSize: 20.sp,
              fontWeight: FontWeight.w600
          ),
          titleLarge: TextStyle(
              color: AppColors.kBodyColor,
              fontSize: 18.sp,
              fontWeight: FontWeight.w500
          ),
          titleMedium: TextStyle(
              color: AppColors.kBodyColor,
              fontSize: 16.sp,
              fontWeight: FontWeight.normal
          ),
          titleSmall: TextStyle(
              color: AppColors.kBodyColor,
              fontSize: 14.sp,
              fontWeight: FontWeight.normal
          ),
        )

    )
);
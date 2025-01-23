import 'package:fitness_app_ui_kit/utils/static/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({super.key,
    required this.hint,
    this.suffixIcon,
    this.secure = false,
    required this.keyboardType,
    required this.controller,
    this.onChanged
  });

  final String hint;
  final Widget? suffixIcon;
  final bool secure;
  final TextInputType keyboardType;
  final TextEditingController controller;
  final Function(String?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56.h,
      child: TextFormField(
        controller: controller ,
        obscureText: secure,
        cursorColor: AppColors.kPrimaryColor,
        style: Theme.of(context).textTheme.titleMedium!.copyWith(color: AppColors.kBodyColor, fontWeight: FontWeight.w300),
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: Theme.of(context).textTheme.titleMedium!.copyWith(color: AppColors.kBodyColor, fontWeight: FontWeight.w300),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.sp),
          ),
          // contentPadding: EdgeInsets.symmetric(horizontal: 16.w),
          filled: true,
          fillColor: AppColors.kTextFormColor,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.sp),
            borderSide: BorderSide(color: AppColors.kPrimaryColor),
          ),
          suffixIcon: suffixIcon ?? SizedBox(),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.sp),
            borderSide: BorderSide(color: AppColors.kBodyColor),
          ),
        ),
        onChanged: onChanged,
        keyboardType: keyboardType,
      ),
    );
  }
}
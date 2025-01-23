import 'package:fitness_app_ui_kit/utils/static/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.color = AppColors.kPrimaryWhiteColor,
    this.hasArrow = false
  });
  final String text;
  final void Function()? onPressed;
  final Color color;
  final bool hasArrow;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed,
        style: ButtonStyle(
            padding: WidgetStatePropertyAll(EdgeInsets.zero),
            backgroundColor: WidgetStateColor.transparent,
            foregroundColor: WidgetStatePropertyAll(AppColors.kSecondaryColor)
        ),
        child: hasArrow ? SizedBox(
          width: 88.w,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            spacing: 5.w,
            children: [
              Text(text, style: Theme.of(context).textTheme.titleMedium!.copyWith(color: color),),
              Icon(Icons.arrow_forward_ios, size: 12.sp, color: color,)
            ],
          ),
        ) : Text(text, style: Theme.of(context).textTheme.titleMedium!.copyWith(color: color),)
    );
  }
}

import 'package:fitness_app_ui_kit/utils/static/app_colors.dart';
import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.color = AppColors.kPrimaryWhiteColor,
  });
  final String text;
  final void Function()? onPressed;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed,
        style: ButtonStyle(
            padding: WidgetStatePropertyAll(EdgeInsets.zero),
            backgroundColor: WidgetStateColor.transparent,
            foregroundColor: WidgetStatePropertyAll(AppColors.kSecondaryColor)
        ),
        child: Text(text, style: Theme.of(context).textTheme.titleMedium!.copyWith(color: color),)
    );
  }
}

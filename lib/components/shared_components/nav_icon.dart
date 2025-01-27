import 'package:fitness_app_ui_kit/utils/static/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg_flutter.dart';

class NavIcon extends StatelessWidget {
  const NavIcon({
    super.key,
    required this.onTap,
    required this.label,
    required this.icon,
    this.selected = false,
  });
  final VoidCallback onTap;
  final String label;
  final String icon;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 100),
        curve: Curves.easeInOut,
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 6.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(43.sp),
          color: selected ? AppColors.kSecondaryColor : Colors.transparent,
        ),
        child: AnimatedSwitcher(
          duration: const Duration(milliseconds: 250),
          transitionBuilder: (child, animation) => ScaleTransition(scale: animation, child: child),
          child: selected
              ? Row(
            spacing: 4.w,
            key: const ValueKey('selected'),
            mainAxisSize: MainAxisSize.min,
            children: [
              SvgPicture.asset(icon, color: AppColors.kPrimaryBlackColor, width: 20.w,height: 20.w),
              AnimatedOpacity(
                duration: const Duration(milliseconds: 150),
                opacity: 1,
                child: Text(
                  label,
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    fontSize: 13.sp,
                  ),
                ),
              ),
            ],
          )
              : SvgPicture.asset(
            icon,
            key: const ValueKey('unselected'),
            color: AppColors.kPrimaryWhiteColor,
            width: 20.w,
            height: 20.w,
          ),
        ),
      ),
    );
  }
}

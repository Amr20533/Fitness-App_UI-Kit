import 'package:fitness_app_ui_kit/components/authentication/auth_bg.dart';
import 'package:fitness_app_ui_kit/components/shared_components/custom_rounded_button.dart';
import 'package:fitness_app_ui_kit/utils/static/app_assets.dart';
import 'package:fitness_app_ui_kit/utils/static/app_context.dart';
import 'package:fitness_app_ui_kit/utils/static/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginSignUpLayout extends StatelessWidget {
  const LoginSignUpLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AuthBg(
        image: AppAssets.loginSignup,
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 22.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              spacing: 26.h,
              children: [
                CustomRoundedButton(
                    onPressed: (){
                      AppContext.navigatorKey.currentState?.pushReplacementNamed(AppRoutes.login);
                    },
                    text: "Login"
                ),
                CustomRoundedButton(
                    onPressed: (){
                      AppContext.navigatorKey.currentState?.pushReplacementNamed(AppRoutes.signup);
                    },
                    text: "Sign Up"
                ),
                SizedBox()
              ],
            ),
          ),
        )
      ),
    );
  }
}


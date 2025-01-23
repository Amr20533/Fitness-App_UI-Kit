import 'package:fitness_app_ui_kit/components/shared_components.dart';
import 'package:fitness_app_ui_kit/utils/static/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginSignUpLayout extends StatelessWidget {
  const LoginSignUpLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(AppAssets.loginSignup),
                )
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 22.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  spacing: 26.h,
                  children: [
                    CustomRoundedButton(
                      onPressed: (){

                      },
                      text: "Login"
                    ),
                    CustomRoundedButton(
                      onPressed: (){

                      },
                      text: "Sign Up"
                    ),
                    SizedBox()
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

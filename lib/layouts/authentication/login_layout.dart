import 'package:fitness_app_ui_kit/components/authentication/auth_bg.dart';
import 'package:fitness_app_ui_kit/components/authentication/or_divider.dart';
import 'package:fitness_app_ui_kit/components/authentication/social_icon.dart';
import 'package:fitness_app_ui_kit/components/shared_components/custom_rounded_button.dart';
import 'package:fitness_app_ui_kit/components/shared_components/custom_text_button.dart';
import 'package:fitness_app_ui_kit/components/shared_components/custom_text_form_field.dart';
import 'package:fitness_app_ui_kit/utils/static/app_assets.dart';
import 'package:fitness_app_ui_kit/utils/static/app_colors.dart';
import 'package:fitness_app_ui_kit/utils/static/app_context.dart';
import 'package:fitness_app_ui_kit/utils/static/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginLayout extends StatefulWidget {
  const LoginLayout({super.key});

  @override
  State<LoginLayout> createState() => _LoginLayoutState();
}

class _LoginLayoutState extends State<LoginLayout> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool secure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AuthBg(
          image: AppAssets.loginBg,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 22.w,vertical: 30.h),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 30.h,
                children: [
                  Text("Welcome Back ! Glad To See You Again", style: Theme.of(context).textTheme.headlineSmall!.copyWith(fontSize: 24.sp)),
                  CustomTextFormField(
                    controller: nameController,
                    hint: "Enter your user name",
                    keyboardType: TextInputType.name,
                  ),
                  CustomTextFormField(
                    controller: passwordController,
                    hint: "Enter your password",
                    secure: secure,
                    suffixIcon: GestureDetector(
                      onTap: (){
                        setState(() {
                          secure = !secure;
                        });
                      },
                      child: Icon(secure ? Icons.lock_outline : Icons.lock_open_outlined),
                    ),
                    keyboardType: TextInputType.visiblePassword,
                  ),
                  Align(
                    alignment: AlignmentDirectional.centerEnd,
                    child: CustomTextButton(
                      onPressed: () {

                      },
                      text: "Forget your password?",
                    ),
                  ),
                  CustomRoundedButton(
                    onPressed: () {
                      AppContext.navigatorKey.currentState?.pushReplacementNamed(AppRoutes.main);
                    },
                    text: "Login",
                  ),
                  OrDivider(text: 'Or Login with'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SocialIcon(icon: AppAssets.google),
                      SocialIcon(icon: AppAssets.facebook),
                      SocialIcon(icon: AppAssets.apple),
                    ],
                  ),
                  const SizedBox(),
                  const SizedBox(),
                  const SizedBox(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: 6.w,
                    children: [
                      Text("Don't have an Account?", style: Theme.of(context).textTheme.titleSmall!.copyWith(color: AppColors.kPrimaryWhiteColor)),
                      CustomTextButton(
                        onPressed: () {
                          AppContext.navigatorKey.currentState?.pushReplacementNamed(AppRoutes.signup);
                        },
                        color: AppColors.kPrimaryColor,
                        text: "Register now",
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
      ),
    );
  }
}
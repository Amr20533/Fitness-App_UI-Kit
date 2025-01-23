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

class SignupLayout extends StatefulWidget {
  const SignupLayout({super.key});

  @override
  State<SignupLayout> createState() => _SignupLayoutState();
}

class _SignupLayoutState extends State<SignupLayout> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  bool secure = true;
  bool secureConfirm = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AuthBg(
          image: AppAssets.signupBg,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 22.w, vertical: 30.h),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 30.h,
                children: [
                  Text("Hello ! Register To Get Started", style: Theme.of(context).textTheme.headlineSmall!.copyWith(fontSize: 24.sp)),
                  CustomTextFormField(
                    controller: nameController,
                    hint: "Enter your user name",
                    keyboardType: TextInputType.name,
                  ),
                  CustomTextFormField(
                    controller: emailController,
                    hint: "Enter your email",
                    keyboardType: TextInputType.emailAddress,
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
                  CustomTextFormField(
                    controller: passwordController,
                    hint: "Confirm Password",
                    secure: secureConfirm,
                    suffixIcon: GestureDetector(
                      onTap: (){
                        setState(() {
                          secureConfirm = !secureConfirm;
                        });
                      },
                      child: Icon(secureConfirm ? Icons.lock_outline : Icons.lock_open_outlined),
                    ),
                    keyboardType: TextInputType.visiblePassword,
                  ),
                  CustomRoundedButton(
                    onPressed: () {

                    },
                    text: "Register",
                  ),
                  OrDivider(text: 'Or Register with'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SocialIcon(icon: AppAssets.google),
                      SocialIcon(icon: AppAssets.facebook),
                      SocialIcon(icon: AppAssets.apple),
                    ],
                  ),
                  SizedBox(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: 6.w,
                    children: [
                      Text("Already have an Account?", style: Theme.of(context).textTheme.titleSmall!.copyWith(color: AppColors.kPrimaryWhiteColor)),
                      CustomTextButton(
                        onPressed: () {
                          AppContext.navigatorKey.currentState?.pushReplacementNamed(AppRoutes.login);
                        },
                        color: AppColors.kPrimaryColor,
                        text: "Login Now",
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
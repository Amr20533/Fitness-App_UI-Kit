import 'package:flutter/material.dart';

class AppColors{
  static const Color kPrimaryColor = Color(0xff014863);
  static const Color kSecondaryColor = Color(0xffBBF246);

  static const Color kPrimaryWhiteColor = Color(0xffFDFEFF);
  static const Color kWhiteColor = Color(0xffFFFFFF);
  static const Color kBgColor = Color(0xffF7F6FA);

  static Color kGreyColor  = Color(0xff384046);
  static Color kSecondaryGreyColor  = Color(0xffFAFBF9);

  static const Color kPrimaryBlackColor = Color(0xff151616);
  static Color kSecondaryBlackColor = Color(0xff192126);
  static const Color kBlackColor = Color(0xff1E1E1E);
  static const Color kShaderColor = Color.fromRGBO(0, 0, 0, 0.8);

  static Color kPurpleColor  = Color(0xffA48AED);
  static Color kCyanColor  = Color(0xff95CCE3);
  static Color kAmberColor  = Color(0xffF8D39D);

  static Color kLightRedColor  = Color(0xffF6CFCF);
  static Color kLightAmberColor  = Color(0xffFFE8C6);
  static Color kLightCyanColor  = Color(0xffD8E6EC);


  static const Color kBodyColor = Color(0xff455057);
  static const Color kSocialCardColor = Color(0xffFEF7FF);
  static const Color kTextFormColor = Color(0xffDBD7D7);

  static Color kActiveAmberProgressColor = Color(0xffFCC46F);
  static Color kInactiveAmberProgressColor = Color(0xffFFEDD1);
  static Color kActivePurpleProgressColor  = Color(0xff3F2B57);
  static Color kInactivePurpleProgressColor  = Color(0xffF5EDFF);

  static Color kRedProgressColor  = Color(0xffED4747);

  static Color kGreyCardColor = Color.fromRGBO(25, 33, 38, 0.1);
  static Color kSecondaryGreyCardColor = Color.fromRGBO(25, 33, 38, 0.7);
  static Color kThirdGreyCardColor = Color.fromRGBO(25, 33, 38, 0.3);

  static Color kAmberCardColor  = Color(0xffF8D39D);
  static Color kRedCardColor  = Color(0xffF9B9B9);
  static Color kCyanCardColor  = Color(0xffAED1E0);
  static Color kPurpleCardColor  = Color(0xffD6BBF8);
  static Color kRecordCardColor  = Color(0xffF1F1F1);
  static Color kLightWhiteCardColor  = Color.fromRGBO(255, 255, 255, 0.8);

  static LinearGradient blackGradient = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [
      Color.fromRGBO(0, 0, 0, 1.0),
      Color.fromRGBO(0, 0, 0, 0),
    ],
    stops: [0.0, 1.0],
  );
}
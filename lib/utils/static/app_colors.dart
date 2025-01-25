import 'package:flutter/material.dart';

class AppColors{
  static const Color kPrimaryColor = Color(0xff014863);
  static const Color kSecondaryColor = Color(0xffBBF246);

  static const Color kPrimaryWhiteColor = Color(0xffFDFEFF);
  static const Color kWhiteColor = Color(0xffFFFFFF);
  static const Color kBgColor = Color(0xffF7F6FA);
  static const Color kSecWhiteColor = Color.fromRGBO(255, 255, 255, 0.5);
  static const Color kDividerColor = Color.fromRGBO(255, 255, 255, 0.25);

  static const Color kGreyColor  = Color(0xff384046);
  static const Color kSecondaryGreyColor  = Color(0xffFAFBF9);

  static const Color kPrimaryBlackColor = Color(0xff151616);
  static const Color kSecondaryBlackColor = Color(0xff192126);
  static const Color kBlackColor = Color(0xff1E1E1E);
  static const Color kShaderColor = Color.fromRGBO(0, 0, 0, 0.8);

  static const Color kPurpleColor  = Color(0xffA48AED);
  static const Color kCyanColor  = Color(0xff95CCE3);
  static const Color kAmberColor  = Color(0xffF8D39D);

  static const Color kLightRedColor  = Color(0xffF6CFCF);
  static const Color kSecLightRedColor  = Color(0xffFFEBEB);
  static const Color kLightPurpleColor  = Color(0xffEAECFF);
  static const Color kSecLightPurpleColor  = Color(0xffEFE2FF);
  static const Color kLightAmberColor  = Color(0xffFFE8C6);
  static const Color kLightCyanColor  = Color(0xffD8E6EC);


  static const Color kBodyColor = Color(0xff455057);
  static const Color kSocialCardColor = Color(0xffFEF7FF);
  static const Color kTextFormColor = Color(0xffDBD7D7);

  static const Color kActiveAmberProgressColor = Color(0xffFCC46F);
  static const Color kInactiveAmberProgressColor = Color(0xffFFEDD1);
  static const Color kActivePurpleProgressColor  = Color(0xff3F2B57);
  static const Color kInactivePurpleProgressColor  = Color(0xffF5EDFF);

  static const Color kRedProgressColor  = Color(0xffED4747);

  static const Color kGreyBorderColor = Color.fromRGBO(25, 33, 38, 0.1);
  static const Color kGreyCardColor = Color(0xffFAFBF9);
  static const Color kGreyTextColor = Color.fromRGBO(25, 33, 38, 0.5);
  static const Color kSecondaryGreyCardColor = Color.fromRGBO(25, 33, 38, 0.7);
  static const Color kThirdGreyCardColor = Color.fromRGBO(25, 33, 38, 0.3);

  static const Color kAmberCardColor  = Color(0xffF8D39D);
  static const Color kRedCardColor  = Color(0xffF9B9B9);
  static const Color kCyanCardColor  = Color(0xffAED1E0);
  static const Color kPurpleCardColor  = Color(0xffD6BBF8);
  static const Color kRecordCardColor  = Color(0xffF1F1F1);
  static const Color kLightWhiteCardColor  = Color.fromRGBO(255, 255, 255, 0.8);

  static LinearGradient blackGradient = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [
      Color.fromRGBO(0, 0, 0, 1.0),
      Color.fromRGBO(0, 0, 0, 0),
    ],
    stops: [0.0, 1.0],
  );

  static LinearGradient secBlackGradient = LinearGradient(
    begin: Alignment.bottomCenter,
    end: Alignment.topCenter,
    colors: [
      Color.fromRGBO(29, 29, 29, 1.0),
      Color.fromRGBO(104, 104, 104, 0),
    ],
    stops: [0.0, 1.0],
  );
}
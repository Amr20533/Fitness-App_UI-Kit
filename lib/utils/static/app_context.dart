import 'package:flutter/material.dart';

class AppContext{
  AppContext._();

  static final AppContext instance = AppContext._();
  static final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  static BuildContext get context {
    if(navigatorKey.currentState == null){
      throw Exception("Context is not available yet!");
    }else{
      return navigatorKey.currentContext!;
    }
  }

}
import 'package:flutter/material.dart';
import 'package:padma_technology/Screen/Home.dart';
import 'package:padma_technology/Screen/LogInScreen.dart';
import 'package:padma_technology/Screen/SplashScreen.dart';

const String HOME = "Home";
const String SPLASH_SCREEN = "splash_screen";
const String LOG_IN = "log in";


Map<String, WidgetBuilder> appRoutes = {
  SPLASH_SCREEN: (BuildContext context) => SplashScreen(),
  LOG_IN: (BuildContext context) => LogInScreen(),
  HOME : (BuildContext context) => Home(),
};

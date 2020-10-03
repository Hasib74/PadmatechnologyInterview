import 'package:flutter/material.dart';
import 'package:padma_technology/AppHelper/AppColors.dart';
import 'package:padma_technology/AppHelper/AppConstant.dart';
import 'package:padma_technology/AppHelper/Dimension.dart';

AppTheme() {
  return ThemeData(
    primaryColor: AppColors.Primary_Lite,
    accentColor: AppColors.Primary_Accent,
    primaryColorDark: AppColors.Primary,
    primaryColorLight: AppColors.Primary_Lite,
    scaffoldBackgroundColor: AppColors.Background,
    appBarTheme: AppBarTheme(color: AppColors.Primary),
    textTheme: TextTheme(
        headline1: TextStyle(
            color: AppColors.Text_Color,
            fontSize: Dimension.big_text_size,
            fontWeight: FontWeight.w800),
        headline2: TextStyle(
            color: AppColors.Text_Color,
            fontSize: Dimension.medium_text_size,
            fontWeight: FontWeight.bold),
        bodyText1: TextStyle(
            color: AppColors.Text_Color,
            fontSize: Dimension.small_text_size,
            fontWeight: FontWeight.normal),
        bodyText2: TextStyle(
            color: AppColors.Text_Color,
            fontSize: Dimension.medium_text_size,
            fontWeight: FontWeight.normal),
       ),
    /*pageTransitionsTheme: PageTransitionsTheme(builders: {
      TargetPlatform.iOS: RouteTransition(),
      TargetPlatform.android: RouteTransition()
    }),*/
    fontFamily: AppConstant.font_poppins,
  );
}
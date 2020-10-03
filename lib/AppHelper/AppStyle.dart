import 'package:flutter/material.dart';
import 'package:padma_technology/AppHelper/Dimension.dart';

class AppStyle {
  static TextStyle title({FontWeight fontWeight, double fontSize, color}) =>
      TextStyle(
        color: color ?? Colors.white,
        fontWeight: fontWeight ?? FontWeight.bold,
        fontSize: fontSize ?? Dimension.medium_text_size,
      );



  static TextStyle normal_text_black = TextStyle(
      letterSpacing: Dimension.latter_spaceing,
      color: Color(0xff525252),
      fontSize: Dimension.medium_text_size,
      fontWeight: FontWeight.bold);

/*  static TextStyle normal_text_2 = TextStyle(
    letterSpacing: Dimension.latter_spaceing,
    color: Colors.white,
    fontSize: 18,
    fontWeight: Dimension.textBold
  );*/
  static TextStyle normal_bold_text(
      {FontWeight fontWeight, fontSize, color, double letterSpacing}) =>
      TextStyle(
        letterSpacing: letterSpacing ?? Dimension.latter_spaceing,
        color: color ?? Colors.white,
        fontWeight: fontWeight ??  FontWeight.bold ,
        fontSize: fontSize ?? Dimension.big_text_size,
      );

  static TextStyle hit_style = TextStyle(
    color: Dimension.hint_color,
    fontSize: 14.0,
    fontWeight: FontWeight.bold,
    letterSpacing: Dimension.latter_spaceing,
  );
}

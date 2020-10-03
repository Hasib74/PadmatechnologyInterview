import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:padma_technology/AppHelper/AppColors.dart';
import 'package:padma_technology/AppHelper/Dimension.dart';
import 'package:padma_technology/main.dart';

class AppButton extends StatelessWidget {
  VoidCallback onClick;
  String text;
  double width;
  double height;
  String icon;
  Color backgroundColor;
  Color textColor;
  double fontSize;
  FontWeight fontWeight;
  double wordSpacing;
  double letterSpacing;
  Color gradianColorOne;
  Color gradianColorTwo;
  double buttonSize;

  AppButton(
      {this.text,
      this.onClick,
      this.width,
      this.height = 43,
      this.backgroundColor,
      this.icon,
      this.textColor,
      this.fontWeight,
      this.fontSize,
      this.buttonSize,
      this.wordSpacing,
      this.letterSpacing,
      this.gradianColorOne,
      this.gradianColorTwo});

  // double buttonSize = mainWidth / 1.2;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? null,
      width: width ?? mainWidth / 1.2,
      decoration: BoxDecoration(
        color: backgroundColor ,
        border: icon != null
            ? Border.all(color: Colors.white.withOpacity(0.3), width: 1)
            : null,
        /* gradient: icon == null
            ? LinearGradient(
            colors: [
              gradianColorOne ?? AppColors.button_gradian_one,
              gradianColorTwo ?? AppColors.button_gradian_two,
            ],
            begin: FractionalOffset(0, 0),
            end: FractionalOffset(0, 1),
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp)
            : null,*/
        borderRadius: BorderRadius.all(Radius.circular(27.5)),
      ),
      child: InkWell(
        onTap: onClick,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              text,
              style: TextStyle(
                  color: textColor ?? Colors.black,
                  fontSize: fontSize ?? 16,
                  wordSpacing: wordSpacing ?? 0.6,
                  letterSpacing: letterSpacing ?? 1.0,
                  fontWeight: fontWeight ?? FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}

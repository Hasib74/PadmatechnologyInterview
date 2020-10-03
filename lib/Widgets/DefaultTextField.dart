import 'package:flutter/material.dart';
import 'package:padma_technology/AppHelper/AppColors.dart';
import 'package:padma_technology/AppHelper/AppSpaces.dart';
import 'package:padma_technology/AppHelper/AppStyle.dart';
import 'package:padma_technology/AppHelper/Dimension.dart';
import 'package:path/path.dart';

import '../main.dart';

Widget DefaultTextField(
    {@required TextEditingController controller,
    FocusNode focusNode,
    String label,
    Color border_color = Colors.white,
    Widget prefixIcon,
    Widget suffixIcon,
    int maxLine = 1,
    TextInputType textInputType = TextInputType.text,
    bool obscureText = false,
    String hint,
    bool enable = true,
    Function onTap,
    bool isRequired = false,
    bool borderEnable = true,
    Color underlineColor = Colors.white,
    double padding = 16,
    Color cursorColor = Colors.white,
    bool passwordEye = true,
    double left_padding = 30,
    double right_padding = 30,
    double top_padding = 0,
    double bottom_padding = 0,
    double font_size = 16,
    double contentPadding_left = 20,
    double contentPadding_bottom = 10,
    double contentPadding_top = 12,
    double focusedBorderRadius = 25.7,
    double enabledBorderRadius = 25.7,
    String headerTitle,
    BuildContext context}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      headerTitle != null
          ? Padding(
              padding: EdgeInsets.only(left: left_padding),
              child: Text(
                "${headerTitle ?? ""}",
                style: TextStyle(
                    color: Colors.white.withOpacity(0.6),
                    fontSize: Dimension.TextField_Height,
                    fontWeight: FontWeight.w400),
              ),
            )
          : Container(),
      headerTitle != null ? AppSpaces.spaces_height_10 : Container(),
      Padding(
        padding: EdgeInsets.only(left: left_padding, right: right_padding),
        child: TextField(
          obscureText: obscureText,
          autofocus: false,
          style: TextStyle(fontSize: font_size, color: Color(0xFFbdc6cf)),
          cursorColor: AppColors.accent_color,
          controller: controller,
          decoration: InputDecoration(
            prefixIcon: prefixIcon ?? null,
            suffixIcon: suffixIcon ?? null,
            filled: true,
            fillColor: border_color,
            hintText: '${hint ?? ""}',
            hintStyle: AppStyle.hit_style,
            alignLabelWithHint: true,
            contentPadding: EdgeInsets.only(
                left: contentPadding_left,
                bottom: contentPadding_bottom,
                top: contentPadding_top),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: border_color),
              borderRadius: BorderRadius.circular(focusedBorderRadius),
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: border_color),
              borderRadius: BorderRadius.circular(enabledBorderRadius),
            ),
          ),
        ),
      ),
    ],
  );
}

import 'package:flutter/material.dart';
import 'package:padma_technology/AppHelper/Dimension.dart';

Widget CircularWidgets(
    {String imageLink,
    double imageSize,
    Icon icon,
    double height = 100,
    double width = 100,
    Color backgroundColor = Colors.white}) {
  return Container(
    height: height,
    width: width,
    decoration: BoxDecoration(
        color: backgroundColor,
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(
            imageLink,
          ),
        )),
  );
}

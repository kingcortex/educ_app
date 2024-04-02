import 'package:flutter/material.dart';

class AppTheme {
  static Color green = const Color(0xffD2FF1F);
  static Color purple1 = const Color(0xffDCC1FF);
  static Color purple2 = const Color(0xffAB93E0);
  static Color orange1 = const Color(0xffF7CE45);

  static TextStyle textStyle(
      {Color color = Colors.black,
      FontWeight fontWeight = FontWeight.normal,
      double fontSize = 16}) {
    return TextStyle(
      fontFamily: 'Oddval',
      color: color,
      fontSize: fontSize,
      fontWeight: fontWeight,
    );
  }
}

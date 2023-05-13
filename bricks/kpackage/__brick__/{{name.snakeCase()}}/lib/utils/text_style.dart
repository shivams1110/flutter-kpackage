import 'package:flutter/material.dart';

class MyTextStyle {
  static TextStyle textStyle(
      {double fontSize = 12,
      @required int? fontColor,
      FontWeight fontWeight = FontWeight.normal,
      String fontFamily = "ProximaNova",
      FontStyle fontStyle = FontStyle.normal,
      double letterSpacing = 0.1,
      TextDecoration decoration = TextDecoration.none}) {
    return TextStyle(
        fontSize: fontSize,
        color: Color(fontColor!),
        fontWeight: fontWeight,
        fontFamily: fontFamily,
        fontStyle: fontStyle,
        letterSpacing: letterSpacing,
        decoration: decoration);
  }
}

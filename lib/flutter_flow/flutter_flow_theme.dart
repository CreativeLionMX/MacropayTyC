import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: avoid_classes_with_only_static_members
class FlutterFlowTheme {
  static const Color primaryColor = Color(0xFF014BC4);
  static const Color secondaryColor = Color(0xFFF6DC00);
  static const Color tertiaryColor = Color(0xFF62CBC9);

  static const Color customColor1 = Color(0xFFF5B335);
  static const Color customColor2 = Color(0xFFA2D45E);

  String primaryFontFamily = 'Poppins';
  String secondaryFontFamily = 'Roboto';
  static TextStyle get title1 => TextStyle(
        fontFamily: 'Avenir',
        color: Color(0xFF014BC4),
        fontWeight: FontWeight.w600,
        fontSize: 24,
        fontStyle: FontStyle.normal,
      );
  static TextStyle get title2 => TextStyle(
        fontFamily: 'Avenir',
        color: Color(0xFF014BC4),
        fontWeight: FontWeight.w500,
        fontSize: 22,
      );
  static TextStyle get title3 => TextStyle(
        fontFamily: 'Avenir',
        color: Color(0xFF014BC4),
        fontWeight: FontWeight.w500,
        fontSize: 20,
      );
  static TextStyle get subtitle1 => TextStyle(
        fontFamily: 'Avenir',
        color: Color(0xB9FFFFFF),
        fontWeight: FontWeight.w500,
        fontSize: 18,
      );
  static TextStyle get subtitle2 => TextStyle(
        fontFamily: 'Avenir',
        color: Color(0xB9FFFFFF),
        fontWeight: FontWeight.normal,
        fontSize: 16,
      );
  static TextStyle get bodyText1 => TextStyle(
        fontFamily: 'Avenir',
        color: Color(0xFF014BC4),
        fontWeight: FontWeight.normal,
        fontSize: 14,
      );
  static TextStyle get bodyText2 => TextStyle(
        fontFamily: 'Avenir',
        color: Color(0xFF014BC4),
        fontWeight: FontWeight.normal,
        fontSize: 14,
      );
}

extension TextStyleHelper on TextStyle {
  TextStyle override({
    String fontFamily,
    Color color,
    double fontSize,
    FontWeight fontWeight,
    FontStyle fontStyle,
    bool useGoogleFonts = true,
    double lineHeight,
  }) =>
      useGoogleFonts
          ? GoogleFonts.getFont(
              fontFamily,
              color: color ?? this.color,
              fontSize: fontSize ?? this.fontSize,
              fontWeight: fontWeight ?? this.fontWeight,
              fontStyle: fontStyle ?? this.fontStyle,
              height: lineHeight,
            )
          : copyWith(
              fontFamily: fontFamily,
              color: color,
              fontSize: fontSize,
              fontWeight: fontWeight,
              fontStyle: fontStyle,
              height: lineHeight,
            );
}

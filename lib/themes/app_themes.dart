import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static const Color primaryColor = Color(0xFF77DA64);
  static const Color black = Color(0xFF292929);
  static const Color white = Colors.white;
  static const Color containerBack = Color(0xFFF1F1F1);
  static const String fontFamilyLato = "Lato";
  static const String fontFamilyQuick = "Quicksand";

  
  TextStyle appStyle(double size, Color color, {bool isBold = false}) {
    return GoogleFonts.mPlusRounded1c(
      fontSize: size,
      fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
      color: color,
    );
  }

   TextStyle buttonTextStyle(double size, Color color, {bool isBold = false}) {
    return GoogleFonts.dmSans(
      fontSize: size,
      fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
      color: color,
    );
  }

  TextStyle alternativeStyle(double size, Color color, {bool isBold = false}) {
    return GoogleFonts.itim(
      fontSize: size,
      fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
      color: color,
    );
  }

  static ThemeData lightTheme = ThemeData(
      brightness: Brightness.light,
      useMaterial3: true,
      primaryColor: primaryColor,
      fontFamily: fontFamilyQuick);
  static ThemeData darkTheme = ThemeData(
      brightness: Brightness.dark,
      useMaterial3: true,
      primaryColor: primaryColor,
      fontFamily: fontFamilyQuick);
}

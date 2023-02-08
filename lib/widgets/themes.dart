import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
      primarySwatch: Colors.deepPurple,
      primaryTextTheme: GoogleFonts.latoTextTheme(),
      fontFamily: GoogleFonts.poppins().fontFamily,
      cardColor: Colors.white,
      canvasColor: creamColor,
      accentColor: darkBluishColor,
      buttonColor: darkBluishColor,
      appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.black),
          titleTextStyle: TextStyle(color: Colors.black)));
  static ThemeData darkTheme(BuildContext context) => ThemeData(
      fontFamily: GoogleFonts.poppins().fontFamily,
      brightness: Brightness.dark,
      cardColor: Colors.black,
      canvasColor: darkCreamColor,
      accentColor: Colors.white,
      buttonColor: lightBluishColor,
      appBarTheme: AppBarTheme(
          color: Colors.black,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.white),
          titleTextStyle: TextStyle(color: Colors.white)));

  // Colors
  static Color creamColor = Color(0xfff5f5f5);
  static Color darkCreamColor = Colors.grey.shade900;
  static Color darkBluishColor = Color(0xff403b58);
  static Color lightBluishColor = Colors.indigo.shade500;
}

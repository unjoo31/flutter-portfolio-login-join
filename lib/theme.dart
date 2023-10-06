import 'package:flutter/material.dart';

const MaterialColor primaryGreen = MaterialColor(
  0xFF53B175,
  <int, Color>{
    50: Color(0xFF53B175),
    100: Color(0xFF53B175),
    200: Color(0xFF53B175),
    300: Color(0xFF53B175),
    400: Color(0xFF53B175),
    500: Color(0xFF53B175),
    600: Color(0xFF53B175),
    700: Color(0xFF53B175),
    800: Color(0xFF53B175),
    900: Color(0xFF53B175),
  },
);

ThemeData theme() {
  return ThemeData(
    primaryColor: primaryGreen,
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        backgroundColor: primaryGreen,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        minimumSize: Size(double.infinity, 60),
      ),
    ),
    primarySwatch: primaryGreen,
    appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(color: primaryGreen),
    ),
  );
}

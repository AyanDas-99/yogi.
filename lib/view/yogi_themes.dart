import 'package:flutter/material.dart';

class YogiThemes {
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.light(
      background: yogiWhite,
    ),
    fontFamily: 'Roboto',
    cardTheme: CardTheme(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
    ),
  );

  static ThemeData darkTheme = ThemeData.dark();

  static Color yogiWhite = const Color.fromARGB(255, 248, 248, 248);
  static Color yogiBlue = Color.fromARGB(255, 167, 218, 245);
  static Color yogiPurple = const Color.fromARGB(255, 179, 160, 255);
  static Color yogiBlack = const Color.fromARGB(255, 13, 16, 27);
  static Color yogiOrange = const Color.fromARGB(255, 255, 204, 64);
}

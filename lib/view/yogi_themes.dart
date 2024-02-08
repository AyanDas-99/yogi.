import 'package:flutter/material.dart';

class YogiThemes {
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.light(
      background: Colors.white,
    ),
    fontFamily: 'JosefinSans',
  );

  static ThemeData darkTheme = ThemeData.dark();

  static Color yogiWhite = Color(0xf8f8f8);
  static Color yogiBlue = Color(0xa0c6ff);
  static Color yogiPurple = Color(0xb3a0ff);
  static Color yogiBlack = Color(0x0d101b);
}

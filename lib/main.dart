import 'package:flutter/material.dart';
import 'package:yogi/view/screen_controller.dart';
import 'package:yogi/view/yogi_themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: YogiThemes.lightTheme,
      darkTheme: YogiThemes.darkTheme,
      themeMode: ThemeMode.light,
      home: const ScreenController(),
    );
  }
}

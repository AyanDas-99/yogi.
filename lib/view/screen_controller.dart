import 'package:flutter/material.dart';
import 'package:yogi/view/catalog/catalog_screen.dart';
import 'package:yogi/view/components/bottom_nav.dart';
import 'package:yogi/view/home/home_screen.dart';
import 'package:yogi/view/profile/profile_screen.dart';
import 'package:yogi/view/stats/stats_screen.dart';

class ScreenController extends StatefulWidget {
  const ScreenController({super.key});

  @override
  State<ScreenController> createState() => _ScreenControllerState();
}

class _ScreenControllerState extends State<ScreenController> {
  int selectedPage = 0;

  // All tabs
  final tabs = const <Widget>[
    HomeScreen(),
    CatalogScreen(),
    StatsScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Material(
        child: SafeArea(
      child: Column(
        children: [
          Expanded(
              child: Container(
            child: tabs[selectedPage],
          )),
          BottomNav(
            currentPage: selectedPage,
            onClick: (index) {
              setState(() {
                selectedPage = index;
              });
            },
          ),
        ],
      ),
    ));
  }
}

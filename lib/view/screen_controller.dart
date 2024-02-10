import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_animate/flutter_animate.dart';
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
  bool _isScrollingUp = false;

  late ScrollController scrollController;

  @override
  void initState() {
    scrollController = ScrollController();
    scrollController.addListener(_scrollListener);
    super.initState();
  }

// Hide the navigation when scrolled down and vice versa
  void _scrollListener() {
    if (scrollController.position.userScrollDirection ==
        ScrollDirection.reverse) {
      // On Up
      setState(() {
        _isScrollingUp = true;
      });
    } else if (scrollController.position.userScrollDirection ==
        ScrollDirection.forward) {
      // Down
      setState(() {
        _isScrollingUp = false;
      });
    }
  }

  @override
  void dispose() {
    scrollController.removeListener(_scrollListener);
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // All tabs
    final tabs = <Widget>[
      HomeScreen(
        scrollController: scrollController,
      ),
      const CatalogScreen(),
      const StatsScreen(),
      ProfileScreen(
        scrollController: scrollController,
      ),
    ];

    return Material(
        child: SafeArea(
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: tabs[selectedPage],
          ),
          Positioned(
            bottom: 20,
            child: BottomNav(
              currentPage: selectedPage,
              onClick: (index) {
                setState(() {
                  selectedPage = index;
                });
              },
            ).animate(target: _isScrollingUp ? 1 : 0).slideY(
                  begin: 0,
                  end: 2,
                  duration: 200.ms,
                  curve: Curves.easeIn,
                ),
          ),
        ],
      ),
    ));
  }
}

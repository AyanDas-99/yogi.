import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:yogi/view/home/components/day_selector.dart';
import 'package:yogi/view/home/components/horizontal_posters_list.dart';
import 'package:yogi/view/home/components/plan_section.dart';
import 'package:yogi/view/home/components/top_nav.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
    required this.scrollController,
  });
  final ScrollController scrollController;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: widget.scrollController,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TopNav(),
          SizedBox(height: 15),
          HorizontalPostersList().animate().fadeIn(),
          SizedBox(height: 15),
          DaySelector(),
          SizedBox(height: 25),
          Text("Your Plan", style: TextStyle(fontSize: 28)),
          SizedBox(height: 15),
          PlanSection(),
          SizedBox(height: 70),
        ],
      ),
    );
  }
}

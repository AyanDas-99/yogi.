import 'package:flutter/material.dart';
import 'package:yogi/view/home/components/day_selector.dart';
import 'package:yogi/view/home/components/horizontal_posters_list.dart';
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
        children: [
          TopNav(),
          SizedBox(height: 15),
          HorizontalPostersList(),
          SizedBox(height: 15),
          DaySelector(),
        ],
      ),
    );
  }
}

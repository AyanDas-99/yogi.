import 'package:flutter/material.dart';

class StatsScreen extends StatefulWidget {
  const StatsScreen({super.key});

  @override
  State<StatsScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<StatsScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Text("Stats")],
    );
  }
}

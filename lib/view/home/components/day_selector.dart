import 'package:flutter/material.dart';
import 'package:yogi/view/home/components/day_button.dart';

class DaySelector extends StatefulWidget {
  const DaySelector({super.key});

  @override
  State<DaySelector> createState() => _DaySelectorState();
}

class _DaySelectorState extends State<DaySelector> {
  int _selected = 0;

  final days = [
    ['Sun', 22],
    ['Mon', 23],
    ['Tue', 24],
    ['Wed', 25],
    ['Thu', 26],
    ['Fri', 27],
    ['Sat', 28],
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 73,
      padding: const EdgeInsets.all(3),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(
          7,
          (index) => GestureDetector(
            onTap: () => setState(() {
              _selected = index;
            }),
            child: DayButton(
              day: days[index][0] as String,
              date: days[index][1] as int,
              selected: _selected == index,
            ),
          ),
        ),
      ),
    );
  }
}

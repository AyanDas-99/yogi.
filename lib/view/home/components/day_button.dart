import 'package:flutter/material.dart';
import 'package:yogi/view/yogi_themes.dart';

class DayButton extends StatelessWidget {
  const DayButton({
    super.key,
    required this.day,
    required this.date,
    required this.selected,
  });
  final String day;
  final int date;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 3),
      padding: const EdgeInsets.symmetric(vertical: 4),
      width: 48,
      decoration: BoxDecoration(
          color: selected ? YogiThemes.yogiBlack : YogiThemes.yogiWhite,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.grey)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CircleAvatar(
              radius: 3,
              backgroundColor: selected ? Colors.white : Colors.black),
          Text(
            day,
            style: TextStyle(
                color: selected ? Colors.white : Colors.black54, fontSize: 15),
          ),
          Text(
            "$date",
            style: TextStyle(color: selected ? Colors.white : Colors.black87),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:yogi/view/yogi_themes.dart';

class YogaStats extends StatelessWidget {
  const YogaStats({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Card(
          color: Colors.lightGreen.shade200,
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Start Weight"),
                Text(
                  "53.2 kg",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          )),
      Card(
          color: Colors.cyan.shade100,
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Goal"),
                Text(
                  "53.2 kg",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          )),
      Card(
          color: YogiThemes.yogiOrange,
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Daily Calories"),
                Text(
                  "53.2 kg",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ))
    ]);
  }
}

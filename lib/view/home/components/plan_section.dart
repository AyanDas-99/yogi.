import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:yogi/view/yogi_themes.dart';

class PlanSection extends StatelessWidget {
  const PlanSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 290,
      child: Row(
        children: [
          Expanded(
            /*
             Card 01
            */
            child: Card(
              color: YogiThemes.yogiOrange,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.orangeAccent.shade100),
                      child: const Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 5, vertical: 1),
                        child: Text("Medium"),
                      ),
                    ),
                    const SizedBox(height: 15),
                    const Text(
                      "Yoga Group",
                      style: TextStyle(fontSize: 25),
                    ),
                    const Text(
                      "25 Nov.",
                      style: TextStyle(
                          fontFamily: 'Aerial', fontWeight: FontWeight.w400),
                    ),
                    const Text(
                      "14:00-15:00",
                      style: TextStyle(
                          fontFamily: 'Aerial', fontWeight: FontWeight.w400),
                    ),
                    const Text(
                      "A5 room",
                      style: TextStyle(
                          fontFamily: 'Aerial', fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(height: 50),
                    const Row(
                      children: [
                        CircleAvatar(
                          radius: 20,
                          backgroundImage: NetworkImage(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRsynwv-5qtogtOwJbIjaPFJUmHpzhxgqIAug&usqp=CAU",
                          ),
                        ),
                        SizedBox(width: 5),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Trainer"),
                            Text(
                              "Tiffany Way",
                              style: TextStyle(fontSize: 17),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ).animate().flip(
                duration: 400.ms, direction: Axis.horizontal, delay: 100.ms),
          ),
          Expanded(
            child: Column(
              children: [
                Expanded(
                  flex: 3,
                  /*
             Card 2
            */
                  child: Card(
                    color: YogiThemes.yogiBlue,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: const Color.fromARGB(
                                        255, 176, 214, 230)),
                                child: const Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 5, vertical: 1),
                                  child: Text("Light"),
                                ),
                              ),
                              const SizedBox(height: 10),
                              const Text(
                                "Balance",
                                style: TextStyle(fontSize: 25),
                              ),
                              const Text(
                                "28 Nov.",
                                style: TextStyle(
                                    fontFamily: 'Aerial',
                                    fontWeight: FontWeight.w400),
                              ),
                              const Text(
                                "18:00-19:30",
                                style: TextStyle(
                                    fontFamily: 'Aerial',
                                    fontWeight: FontWeight.w400),
                              ),
                              const Text(
                                "A2 room",
                                style: TextStyle(
                                    fontFamily: 'Aerial',
                                    fontWeight: FontWeight.w400),
                              )
                            ],
                          ),
                          Transform.scale(
                            scale: 1.8,
                            child: Image.asset(
                              'assets/images/blue-elephant.png',
                              width: 60,
                            ),
                          )
                        ],
                      ),
                    ),
                  ).animate().flip(direction: Axis.horizontal),
                ),
                Expanded(
                  flex: 1,
                  /*
             Card 3
            */

                  child: Card(
                    color: const Color.fromARGB(255, 255, 168, 232),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CircleAvatar(
                          radius: 22,
                          backgroundColor: Colors.pinkAccent.shade100,
                          child: CircleAvatar(
                            backgroundColor: YogiThemes.yogiWhite,
                            radius: 15,
                            child: const FaIcon(
                              FontAwesomeIcons.instagram,
                              color: Colors.red,
                              size: 15,
                            ),
                          ),
                        ),
                        CircleAvatar(
                          radius: 22,
                          backgroundColor: Colors.pinkAccent.shade100,
                          child: CircleAvatar(
                            backgroundColor: YogiThemes.yogiWhite,
                            radius: 15,
                            child: const FaIcon(
                              FontAwesomeIcons.youtube,
                              color: Colors.red,
                              size: 15,
                            ),
                          ),
                        ),
                        CircleAvatar(
                          radius: 22,
                          backgroundColor: Colors.pinkAccent.shade100,
                          child: CircleAvatar(
                            backgroundColor: YogiThemes.yogiWhite,
                            radius: 15,
                            child: const FaIcon(
                              FontAwesomeIcons.twitter,
                              color: Colors.blue,
                              size: 15,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ).animate().flip(),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

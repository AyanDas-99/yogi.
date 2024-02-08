import 'package:flutter/material.dart';
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
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              color: Color.fromARGB(255, 255, 204, 64),
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
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Expanded(
                  flex: 3,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
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
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
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
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

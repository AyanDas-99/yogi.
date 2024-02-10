import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TopNav extends StatelessWidget {
  const TopNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Container()),
        const Expanded(
            child: Text(
          "Profile",
          style: TextStyle(fontSize: 23),
        )),
        IconButton(
          style: const ButtonStyle(
              side: MaterialStatePropertyAll(
                  BorderSide(width: 0.5, color: Colors.grey))),
          onPressed: () {},
          icon: const FaIcon(FontAwesomeIcons.gear),
        ),
      ],
    );
  }
}

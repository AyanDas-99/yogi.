import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class UserDetails extends StatelessWidget {
  const UserDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRsynwv-5qtogtOwJbIjaPFJUmHpzhxgqIAug&usqp=CAU"),
              radius: 33,
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Sandra Glam",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 17),
                ),
                Text(
                  "Denmark, Copenhagen",
                  style: TextStyle(color: Colors.blueGrey),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          children: [
            const Column(
              children: [
                Text(
                  "Follow",
                  style: TextStyle(fontSize: 15),
                ),
                Text("72"),
              ],
            ),
            const SizedBox(width: 15),
            const Column(
              children: [
                Text(
                  "Followers",
                  style: TextStyle(fontSize: 15),
                ),
                Text("172"),
              ],
            ),
            Expanded(child: Container()),
            ElevatedButton(
                onPressed: () {},
                style: const ButtonStyle(
                  padding: MaterialStatePropertyAll(EdgeInsets.zero),
                  shadowColor: MaterialStatePropertyAll(Colors.transparent),
                  iconColor: MaterialStatePropertyAll(Colors.black),
                  backgroundColor: MaterialStatePropertyAll(Colors.white),
                  surfaceTintColor: MaterialStatePropertyAll(Colors.white),
                ),
                child: const Icon(Icons.screen_share_outlined)),
            const SizedBox(width: 15),
            ElevatedButton(
              onPressed: () {},
              style: const ButtonStyle(
                  padding: MaterialStatePropertyAll(EdgeInsets.zero),
                  shadowColor: MaterialStatePropertyAll(Colors.transparent),
                  iconColor: MaterialStatePropertyAll(Colors.black),
                  surfaceTintColor: MaterialStatePropertyAll(Colors.white)),
              child: const Icon(Icons.mode_edit_outline_outlined),
            )
          ],
        )
      ],
    );
  }
}

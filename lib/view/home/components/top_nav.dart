import 'package:flutter/material.dart';

class TopNav extends StatelessWidget {
  const TopNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const CircleAvatar(
          backgroundImage: NetworkImage(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3HWiMNcayzEoGFI70CWs-4GRnFFMgIcR4Ig&usqp=CAU'),
        ),
        const Column(
          children: [
            Text(
              "Hello, Sandra",
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 17),
            ),
            Text("Today 25 Nov."),
          ],
        ),
        IconButton(
            style: const ButtonStyle(
                side: MaterialStatePropertyAll(
                    BorderSide(width: 0.5, color: Colors.grey))),
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              size: 28,
            )),
      ],
    );
  }
}

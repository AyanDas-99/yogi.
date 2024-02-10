import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DetailedStatPages extends StatelessWidget {
  const DetailedStatPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text("Physical activity"),
          subtitle: Text(
            '2 days ago',
            style: TextStyle(color: Colors.blueGrey),
          ),
          leading: FaIcon(FontAwesomeIcons.personRunning, size: 20),
          trailing: Icon(Icons.arrow_forward_ios_sharp, size: 20),
        ),
        Divider(thickness: 0.2, color: Colors.blueGrey),
        ListTile(
          title: Text("Statistics"),
          subtitle: Text(
            'This year: 109 kilometers',
            style: TextStyle(color: Colors.blueGrey),
          ),
          leading: FaIcon(FontAwesomeIcons.list, size: 20),
          trailing: Icon(Icons.arrow_forward_ios_sharp, size: 20),
        ),
        Divider(thickness: 0.2, color: Colors.blueGrey),
        ListTile(
          title: Text("Routes"),
          subtitle: Text(
            '7',
            style: TextStyle(color: Colors.blueGrey),
          ),
          leading: FaIcon(FontAwesomeIcons.route, size: 20),
          trailing: Icon(Icons.arrow_forward_ios_sharp, size: 20),
        ),
        Divider(thickness: 0.2, color: Colors.blueGrey),
        ListTile(
          title: Text("Best time"),
          subtitle: Text(
            'Show all',
            style: TextStyle(color: Colors.blueGrey),
          ),
          leading: FaIcon(FontAwesomeIcons.trophy, size: 20),
          trailing: Icon(Icons.arrow_forward_ios_sharp, size: 20),
        ),
        Divider(thickness: 0.2, color: Colors.blueGrey),
        ListTile(
          title: Text("Equipment"),
          subtitle: Text(
            'Nike Pegasus 3000: 130.4 km',
            style: TextStyle(color: Colors.blueGrey),
          ),
          leading: FaIcon(FontAwesomeIcons.boltLightning, size: 20),
          trailing: Icon(Icons.arrow_forward_ios_sharp, size: 20),
        ),
      ]
          .animate(interval: 50.ms)
          .slideX(begin: -0.1, curve: Curves.fastOutSlowIn)
          .fadeIn(),
    );
  }
}

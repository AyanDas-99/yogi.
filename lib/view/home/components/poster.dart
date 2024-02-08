import 'package:flutter/material.dart';
import 'package:yogi/view/yogi_themes.dart';

class Poster extends StatelessWidget {
  const Poster(
      {super.key,
      required this.title,
      required this.desc,
      required this.image,
      required this.challengers});
  final String title;
  final String desc;
  final ImageProvider image;
  final List<String> challengers;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: YogiThemes.yogiPurple,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            Expanded(
              flex: 3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    softWrap: true,
                    style: const TextStyle(
                        letterSpacing: 0.1,
                        fontSize: 33,
                        fontWeight: FontWeight.w700),
                  ),
                  Text(
                    desc,
                    style: const TextStyle(fontSize: 13, letterSpacing: 0.1),
                  ),
                  Row(
                    children: [
                      if (challengers.isNotEmpty)
                        CircleAvatar(
                          radius: 16,
                          backgroundImage: NetworkImage(challengers[0]),
                        ),
                      if (challengers.length > 1)
                        Transform.translate(
                          offset: const Offset(-5, 0),
                          child: CircleAvatar(
                            backgroundColor: YogiThemes.yogiPurple,
                            radius: 17,
                            child: CircleAvatar(
                              radius: 16,
                              backgroundImage: NetworkImage(challengers[1]),
                            ),
                          ),
                        ),
                      if (challengers.length > 3)
                        Transform.translate(
                          offset: const Offset(15, 0),
                          child: CircleAvatar(
                            backgroundColor: YogiThemes.yogiPurple,
                            radius: 17,
                            child: CircleAvatar(
                              radius: 16,
                              child: Text("+${challengers.length - 3}"),
                            ),
                          ),
                        ),
                      if (challengers.length > 1)
                        Transform.translate(
                          offset: const Offset(-45, 0),
                          child: CircleAvatar(
                            backgroundColor: YogiThemes.yogiPurple,
                            radius: 17,
                            child: CircleAvatar(
                              radius: 16,
                              backgroundImage: NetworkImage(challengers[2]),
                            ),
                          ),
                        ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Transform.scale(
                scale: 1.4,
                child: Image(
                  image: image,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

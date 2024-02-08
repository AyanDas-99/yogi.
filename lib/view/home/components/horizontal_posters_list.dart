import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:yogi/view/home/components/poster.dart';

class HorizontalPostersList extends StatelessWidget {
  const HorizontalPostersList({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: 4,
      itemBuilder: (context, index, realIndex) => const Padding(
        padding: EdgeInsets.symmetric(horizontal: 4),
        child: Poster(
            title: "Daily Challenge",
            desc: "Do your plan before 09.00 AM",
            image: AssetImage('assets/images/dog_yoga.png'),
            challengers: [
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3HWiMNcayzEoGFI70CWs-4GRnFFMgIcR4Ig&usqp=CAU",
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRsynwv-5qtogtOwJbIjaPFJUmHpzhxgqIAug&usqp=CAU",
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcROpuqoZ8AmK6QM6BelW1Sc25_mEKgrx5Zoxw&usqp=CAU",
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3HWiMNcayzEoGFI70CWs-4GRnFFMgIcR4Ig&usqp=CAU",
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3HWiMNcayzEoGFI70CWs-4GRnFFMgIcR4Ig&usqp=CAU",
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3HWiMNcayzEoGFI70CWs-4GRnFFMgIcR4Ig&usqp=CAU"
            ]),
      ),
      options: CarouselOptions(
        enableInfiniteScroll: false,
        aspectRatio: 2 / 1,
        viewportFraction: 1,
      ),
    );
  }
}

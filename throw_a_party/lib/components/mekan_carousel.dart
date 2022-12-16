import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

final List<String> imgList = [
  "https://lh3.googleusercontent.com/p/AF1QipM-sbaObyKPSoxOusUkh9VwWSvMukCS_NHLqdwy=s680-w680-h510",
  "https://www.unikuir.org/assets/public/news/if-performance-hall-ankara-lgbti-fobik-eylemlerine-devam-ediyor-22-01-2022.jpg",
  "https://cdn.archilovers.com/projects/c_383_94c505f6-e0f5-4ea6-9679-1d4bd87c47e3.jpg",
];

class CarouselComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              "Places you might like:",
              style: TextStyle(fontFamily: "Poppins"),
            )),
        CarouselSlider(
            items: imgList
                .map((item) => Container(
                    child: Center(
                        child: Image.network(item,
                            fit: BoxFit.cover, width: 1000))))
                .toList(),
            options: CarouselOptions(
              autoPlay: true,
              aspectRatio: 2.0,
              enlargeCenterPage: true,
            ))
      ],
    ));
  }
}

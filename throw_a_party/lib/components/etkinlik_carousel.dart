import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

final List<String> imgList = [
  "https://www.yurtgazetesi.com.tr/d/news/194139.jpg",
  "https://media-cdn.t24.com.tr/media/library/2021/07/1625546069492-60-e-386414-e-3-fe-0195427-df-4-c.jpg",
  "https://www.wts.com.tr/images/konserler-wts.jpg",
];

class EtkinlikCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              "In town today:",
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

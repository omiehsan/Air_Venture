import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:hawai_jubu/src/services/recommended/recommend.dart';
import '../../../utils/constaints/images.dart';

final List<Widget> carouselItems = [
  Image.asset(jSplashItem),
  Image.asset(jSplashIcon),
  Image.asset(jLeMeridianView),
  // Add more widgets as needed
];
class MyCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 100,
        autoPlay: true,
        enlargeCenterPage: true,
        aspectRatio: 16 /9,
        autoPlayInterval: const Duration(seconds: 2),
      ),
      items: carouselItems,
    );
  }
}

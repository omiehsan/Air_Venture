import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../../../utils/constaints/images.dart';

final List<Widget> carouselItems = [
  Image.asset(jBanner),
  Image.asset(jBanner2),
  Image.asset(jBanner3),
  Image.asset(jBanner4),
];
class MyCarousel extends StatelessWidget {
  const MyCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 120,
        autoPlay: true,
        enlargeCenterPage: true,
        aspectRatio: 16 /9,
        autoPlayInterval: const Duration(seconds: 3),
      ),
      items: carouselItems,
    );
  }
}

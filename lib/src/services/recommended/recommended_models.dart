import 'dart:math';
import 'package:flutter/material.dart';
import 'package:hawai_jubu/src/services/recommended/recommend.dart';

class DashRecommendedModels {
  final String recoType;
  final String recoName;
  final String recoImage;
  final String recoLocation;
  int? recoHotelCost;
  final VoidCallback? onPress;

  DashRecommendedModels(
      this.recoType,
      this.recoName,
      this.recoImage,
      this.recoLocation,
      this.onPress, {this.recoHotelCost}) {
    if (this.recoHotelCost == null) {
      this.recoHotelCost = new Random().nextInt(650);
    } else {
      this.recoHotelCost = this.recoHotelCost;
    }
  }

  static List<DashRecommendedModels> recoItem = [
    DashRecommendedModels(
        jLeMeridianType,
        jLeMeridianTitle,
        jLeMeridianView,
        jLeMeridianLoc, null),

    DashRecommendedModels(
        jInterContinentalType,
        jInterContinentalTitle,
        jInterContinentalView,
        jInterContinentalLoc, null),

    DashRecommendedModels(
        jRadissonBluType,
        jRadissonBluTitle,
        jRadissonBluView,
        jRadissonBluLoc, null),
  ];
}

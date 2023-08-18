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
      this.recoHotelCost = Random().nextInt(201) + 150;
    } else {
      this.recoHotelCost = this.recoHotelCost;
    }
  }


static List<DashRecommendedModels> recoItem = [
    DashRecommendedModels(
        jLeMeridianType,
        jLeMeridianTitle,
        jLeMeridianView,
        jLeMeridianLoc, (){}),

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
    DashRecommendedModels(
        jSheratonType,
        jSheratonTitle,
        jSheratonView,
        jSheratonLoc, null),
    DashRecommendedModels(
        jBestWestHeritageType,
        jBestWestHeritageTitle,
        jBestWestHeritageView,
        jBestWestHeritageLoc, null),
    DashRecommendedModels(
        jHotelCoxTodayType,
        jHotelCoxTodayTitle,
        jHotelCoxTodayView,
        jHotelCoxTodayLoc, null),
    DashRecommendedModels(
        jNirvanaInnType,
        jNirvanaInnTitle,
        jNirvanaInnView,
        jNirvanaInnLoc, null),
    DashRecommendedModels(
        jTheOberoiGrandType,
        jTheOberoiGrandTitle,
        jTheOberoiGrandView,
        jTheOberoiGrandLoc, null),
    DashRecommendedModels(
        jTajPalaceType,
        jTajPalaceTitle,
        jTajPalaceView,
        jTajPalaceLoc, null),
    DashRecommendedModels(
        jRaffleThePalmType,
        jRaffleThePalmTitle,
        jRaffleThePalmView,
        jRaffleThePalmLoc, null),
    DashRecommendedModels(
        jMarinaBaySandsType,
        jMarinaBaySandsTitle,
        jMarinaBaySandsView,
        jMarinaBaySandsLoc, null),
    DashRecommendedModels(
        jHiltonKualaLumpurType,
        jHiltonKualaLumpurTitle,
        jHiltonKualaLumpurView,
        jHiltonKualaLumpurLoc, (){})


  ];
}

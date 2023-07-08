import 'dart:ui';
import 'package:flutter/material.dart';

 hexStringToColor(String hexColor) {
  hexColor = hexColor.toUpperCase().replaceAll("#", "");
  if (hexColor.length == 6) {
    hexColor = "FF" + hexColor;
  }
  return Color(int.parse(hexColor, radix: 16));
}

void main() {
  Color strColor = hexStringToColor("CB2B93");
  print(strColor);
  Color midColor = hexStringToColor("2B2B93");
  print(midColor);
  Color endColor = hexStringToColor("CB2B93");
  print(endColor);


}

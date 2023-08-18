import 'package:flutter/material.dart';
import 'package:hawai_jubu/src/services/offer/offer_view.dart';
import 'package:hawai_jubu/src/utils/constaints/images.dart';

class Package extends StatelessWidget {
  const Package({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar:AppBar(
        //   title: Text("Package",
        //       style:
        //       GoogleFonts.poppins(fontWeight: FontWeight.bold, fontSize: 17,color: Colors.white)),
        //   centerTitle: true,
        //   flexibleSpace: Container(
        //     decoration: const BoxDecoration(
        //       gradient: LinearGradient(
        //         begin: Alignment.topLeft,
        //         end: Alignment.bottomRight,
        //         colors: <Color>[Color(0xFFfc8a28), Color(0xFFc55c00)],
        //       ),
        //     ),
        //   ),
        // ),
        backgroundColor: Colors.brown[50],
        body: Column(
          children: [
            Image(image: AssetImage(jPackBanner)),
            FirstPackView(textTheme: Typography.blackCupertino)
          ],
        ),
      ),
    );
  }
}
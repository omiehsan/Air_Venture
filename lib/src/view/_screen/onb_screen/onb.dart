import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          LiquidSwipe(
             pages: [
               Container(color: Colors.white70,
               child: Column(
                 children: const [
                   Image(image: AssetImage("jSplashLogo")),
                   Text("Make Some Good Moment With Us!"),
                   Text("Make Some Good Moment With Us!"),
                   Text("Make Some Good Moment With Us!"),
                 ],
               ),
               ),
               Container(color: Color(0xFF988459),),
               Container(color: Color(0xb5fc8a28),)
             ],
          )
        ],
      ),
    );
  }
}
//


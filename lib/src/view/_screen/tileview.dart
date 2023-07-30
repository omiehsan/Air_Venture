import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Tileview extends StatefulWidget {
  @override
  _TileviewState createState() => _TileviewState();
}

class _TileviewState extends State<Tileview> {
  bool isReacted = false;

  void toggleReaction() {
    setState(() {
      isReacted = !isReacted;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: Stack(
          children: [
            // Image
            SizedBox(
              width: double.infinity,
              height: 200,
              child: Image.network(
                'https://visitabudhabi.ae/-/media/project/vad/where-to-go/about-abu-dhabi/uae-capital-and-surrounds/new-rebrand-images/header/uae-capital-and-surrounds-header.jpg',
                fit: BoxFit.fill,
              ),
            ),

            // Premium Overlay

            Positioned(
              top: -8,
              left:-2,
              child: IconButton(
                  icon: Lottie.network(
                    'https://lottie.host/10b6a0e7-b072-4c9b-ad48-d9aa52a67ffa/3nHR9jdAFR.json',
                    width: 35,
                    height: 35,
                  ),
                  splashRadius: 25,
                  onPressed: null),
            ),
            // Reaction Button
            Positioned(
              bottom: 3.0,
              right: 3.0,
              child: SizedBox(
                width: 24,
                height: 24,
                child: FloatingActionButton(
                  elevation: 5,
                  onPressed: toggleReaction,
                  mini: true,
                  backgroundColor: Colors.white70,
                  child: Icon(
                    isReacted ? Icons.favorite : Icons.favorite_border,color: Colors.orange,
                    size: 21,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

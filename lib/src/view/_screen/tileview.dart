import 'package:flutter/material.dart';

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
              Container(
                width: double.infinity,
                height: 200,
                child: Image.network(
                  'https://visitabudhabi.ae/-/media/project/vad/where-to-go/about-abu-dhabi/uae-capital-and-surrounds/new-rebrand-images/header/uae-capital-and-surrounds-header.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              // Feature Overlay
              Positioned(
                top: 4.0,
                left: 4.0,
                child: Container(
                  padding: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                  color: Colors.black.withOpacity(0.5)),
                  child:
                  Text(
                    'Featured',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 8.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              // Reaction Button
              Positioned(
                bottom: 3.0,
                right: 3.0,
                child: SizedBox(
                  width: 24,
                  height: 24,
                  child: FloatingActionButton(
                    onPressed: toggleReaction,
                    mini: true,
                    child: Icon(
                      isReacted ? Icons.favorite : Icons.favorite_border,
                      size: 15,
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
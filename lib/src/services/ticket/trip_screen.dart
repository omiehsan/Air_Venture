import 'package:flutter/material.dart';
import 'package:hawai_jubu/src/services/ticket/ticket.dart';
import '../../utils/constaints/space.dart';

class Trip extends StatelessWidget {
  const Trip({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(child:
      Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(

            children: [
              Space.Y(60),
              for (int i = 0; i < 3; i++) Ticket()
            ],
          ),
        ),
      ),),
    );
  }
}

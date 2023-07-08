import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import '../../utils/constaints/space.dart';

class Ticket extends StatelessWidget {
  const Ticket({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
          color: Colors.white54 ,

        ),
        child: GestureDetector(
          onTap: (){},
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'FROM',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          color: Colors.black.withOpacity(0.4)),
                    ),
                    Spacer(),
                    SizedBox(
                        height: 60,
                        width: 80,
                        child: Center(
                          child: Lottie.network('https://assets3.lottiefiles.com/packages/lf20_GppSUv.json', repeat: true, animate: true),
                        )),
                    Spacer(),
                    Text(
                      'To',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          color: Colors.black.withOpacity(0.4)),
                    ),
                  ],
                ),
                Space.Y(10),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'DEL',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Colors.black),
                    ),
                    Spacer(),
                    Text(
                      'JFK',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Colors.black),
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'New Delhi, india',
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 12,
                          color: Colors.black.withOpacity(0.3)),
                    ),
                    Spacer(),
                    Text(
                      'John F. Kennedy, NY',
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 12,
                          color: Colors.black.withOpacity(0.3)),
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      '23:45, Thu 15 Oct',
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 12,
                          color: Colors.black.withOpacity(0.3)),
                    ),
                    Spacer(),
                    Text(
                      '4:30, Fri 16 Oct',
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 12,
                          color: Colors.black.withOpacity(0.3)),
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Terminal 1',
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 12,
                          color: Colors.black.withOpacity(0.3)),
                    ),
                    Spacer(),
                    Text(
                      'Terminal 2',
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 12,
                          color: Colors.black.withOpacity(0.3)),
                    ),
                  ],
                ),
                Space.Y(20),
              ],
            ),
          ),
        ) ,
      ),
    );
  }
}
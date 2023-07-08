import 'package:flutter/material.dart';

class Calender extends StatefulWidget {
  const Calender({Key? key}) : super(key: key);

  @override
  State<Calender> createState() => _CalenderState();
}

class _CalenderState extends State<Calender> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MaterialButton(
          onPressed: () {},
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Text("Date", style: TextStyle (color: Colors.white70, fontSize: 15),),
          ),
        ),
      ),
    );
  }
}

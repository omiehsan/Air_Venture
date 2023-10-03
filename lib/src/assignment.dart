import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Assignment extends StatelessWidget {
  const Assignment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white60,
      body: Center(
        child: Container(
          height: 600,
          width: 300,
          color: Colors.white,
          child: Column(
            children: [
              SizedBox(
                child: Center(child: Image.asset("assets/images/versity.jpg")),
              ),
              Container(
                color: Colors.blue[900],
                width: double.infinity,
                height: 150,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0,left: 20),
                      child: Column(
                        children: [
                          Text('S'),
                          Text('T'),
                          Text('U'),
                          Text('D'),
                          Text('E'),
                          Text('N'),
                          Text('T'),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20.0),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(width: 3,),
                          borderRadius: BorderRadius.circular(100),
                          shape: BoxShape.rectangle,
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: const Image(
                            image: AssetImage(
                                "assets/images/mim.jpg"),
                            fit: BoxFit.cover,
                            height: 120,
                            width: 120,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.all(5),
                width: double.infinity,
                child: (Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Fariha akhter",),
                    Text("ID: 183061006",),
                    Text("REG. NO. : 180007156",),
                    Text("Dept. of Computer Science & Engineering (B.Sc.CSE)"),
                    Text("Blood Group : B+",),
                  ],
                )),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 5,
                color: Colors.blue,
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Nigar Sultana",
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text("Register",),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

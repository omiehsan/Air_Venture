import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          child: Container(

            height: MediaQuery.of(context).size.height*0.8,
            width: MediaQuery.of(context).size.width*0.8,
            color: Colors.white,
            child: Column(
              children: [
                SizedBox(
                  child: Center(child: Image.asset("assets/shanto.jpg")),
                ),
                Container(
                  color: Colors.blue[900],
                  width: double.infinity,
                  height: 150,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Transform.rotate(
                        angle: -90 * (3.14159265359 / 180.0),
                        child: Text(
                          'STUDENT',
                          style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                              letterSpacing: 10),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(width: 3, color: Colors.orange),
                          borderRadius: BorderRadius.circular(100),
                          shape: BoxShape.rectangle,
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: const Image(
                            image: AssetImage(
                                "assets/images/ju.jpg"),
                            fit: BoxFit.cover,
                            height: 150,
                            width: 145,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.orange,
                  height: 3,
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
                      Text("Jubaer Hasan",
                          style: GoogleFonts.poppins(fontSize: 14)),
                      Text("ID: 183071031",
                          style: GoogleFonts.poppins(
                              fontSize: 14, color: Colors.blue[900])),
                      Text("REG. NO. : 180007156",
                          style: GoogleFonts.poppins(
                              fontSize: 14, color: Colors.blue[900])),
                      Text("Dept. of Computer Science & Engineering \n (B.Sc.CSE)",
                          style: GoogleFonts.poppins(fontWeight: FontWeight.bold)),
                      Text("Blood Group : A+",
                          style: GoogleFonts.poppins(fontWeight: FontWeight.bold)),
                    ],
                  )),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 5,
                  color: Colors.orange,
                ),
                SizedBox(
                  height: 10,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Mehedi Hasan",
                      style: GoogleFonts.greatVibes(fontSize: 25),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text("Register",
                        style: GoogleFonts.poppins(
                            fontSize: 14, color: Colors.blue[900])),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

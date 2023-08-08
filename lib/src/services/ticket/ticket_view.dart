import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../utils/constaints/app_layout.dart';

class TicketView extends StatefulWidget {
  const TicketView({Key? key}) : super(key: key);

  @override
  _TicketViewState createState() => _TicketViewState();
}

class _TicketViewState extends State<TicketView> {
  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.9,
      height: 180,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        color: Colors.white70,
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 14.0, left: 18),
                      child: InkWell(
                        // onTap: () {},
                        child: Material(
                          borderRadius: BorderRadius.circular(10),
                          elevation: 10,
                          child: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: const DecorationImage(
                                fit: BoxFit.fitHeight,
                                image: AssetImage("assets/images/img_1.png"),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                      const EdgeInsets.only(left: 14.0, top: 16,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "#TRXT1686413083146",
                            style: GoogleFonts.poppins(
                                fontSize: 13, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            "BBDA-189",
                            style: GoogleFonts.poppins(
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16.0,right: 18),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text(
                        "11 Jun 2023",
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text("Active"),
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(60, 22),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              child: Divider(thickness: 2),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 18),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "DHA",
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        "Duration",
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        "CTG",
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 18),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "10:40",
                        style: GoogleFonts.poppins(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Center(
                          child: Transform.rotate(
                            angle: 1.5,
                            child: const Icon(
                              Icons.local_airport_rounded,
                              color: Colors.deepOrange,
                            ),
                          ),
                        ),
                      ),
                      Text(
                        "1:05",
                        style: GoogleFonts.poppins(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 18),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "11 Jun 2023",
                        style: GoogleFonts.poppins(
                          fontSize: 12, ),
                      ),
                      Text(
                        "   2h 25m",
                        style: GoogleFonts.poppins(
                            fontSize: 12, fontWeight: FontWeight.bold ),
                      ),


                      Text(
                        "11 June 2023",
                        style: GoogleFonts.poppins(
                          fontSize: 12,),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

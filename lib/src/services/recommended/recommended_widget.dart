import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RecommendedFlightsWidgets extends StatefulWidget {
  const RecommendedFlightsWidgets({Key? key}) : super(key: key);

  @override
  State<RecommendedFlightsWidgets> createState() =>
      _RecommendedFlightsWidgetsState();
}

class _RecommendedFlightsWidgetsState extends State<RecommendedFlightsWidgets> {
  bool isReacted = false;

  void toggleReaction() {
    setState(() {
      isReacted = !isReacted;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.85,
      height: 120,
      child: Card(
        elevation: 3,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Stack(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    // onTap: () {},
                    child: Container(
                      height: 150,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/one.png"),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.house_rounded,
                            size: 20,
                            color: Colors.orange,
                          ),
                          Text(
                            "House",
                            style: GoogleFonts.poppins(),
                          ),
                        ],
                      ),
                      Text(
                        " \$400",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        " Le Meridian",
                        style: GoogleFonts.poppins(),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            size: 20,
                            color: Colors.green.shade500,
                          ),
                          Text(
                            "Dhaka",
                            style: GoogleFonts.poppins(),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              top: 0,
              right: 0,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: 30,
                  height: 30,
                  child: FloatingActionButton(
                    onPressed: toggleReaction,
                    mini: true,
                    child: Icon(
                      isReacted ? Icons.favorite : Icons.favorite_border,
                      size: 20,
                    ),
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

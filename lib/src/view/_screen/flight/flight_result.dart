import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import '../../../controller/authentication/models/flights_model.dart'; // Import the FlightSearchModel
import '../../flights/destination_details.dart';

class Flight_Result extends StatelessWidget {
  final List<FlightSearchModel> searchResults;

  Flight_Result({required this.searchResults});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title:  Text("Departing Flights",
            style: GoogleFonts.montserrat(
                fontWeight: FontWeight.bold, fontSize: 17)),
        centerTitle: true,
        elevation: 3,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: <Color>[Color(0xFFfc8a28), Color(0xFFc55c00)],
            ),
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: searchResults.length,
        itemBuilder: (context, index) {
          FlightSearchModel flight = searchResults[index];
          final formattedDate = DateFormat('dd/MM/yy').format(flight.date);

          return GestureDetector(
            onTap: () {
              // Navigate to the DestinationDetailsPage with the selected flight data.
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DestinationDetailsPage(flight: flight),
                ),
              );
            },
            child: Card(
              margin: const EdgeInsets.only(left: 10,right: 10,top: 10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              color: Colors.white70,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0,right: 15,top: 15,bottom: 10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            InkWell(
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
                                      image:
                                          AssetImage("assets/images/img_1.png"),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 10,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('${flight.airline}',
                                  style: GoogleFonts.poppins(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "BBDA-189",
                                  style: GoogleFonts.poppins(
                                    fontSize: 13,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              '\$${flight.price}',
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.bold,color: Colors.green,
                                  fontSize: 13),
                            ),
                            Text(
                              '${flight.flightClass}',
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 14),
                            ),

                          ],
                        )
                      ],
                    ),

                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: Divider(thickness:1),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0,right: 15,bottom: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '${flight.fromDestination}',
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
                              '${flight.toDestination}',
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '$formattedDate',
                              style: GoogleFonts.poppins(
                                fontSize: 14,fontWeight: FontWeight.normal
                              ),
                            ),
                            Center(
                              child: Transform.rotate(
                                angle: 1.5,
                                child: const Icon(
                                  Icons.local_airport_rounded,
                                  color: Colors.deepOrange,
                                  size: 20,
                                ),
                              ),
                            ),
                            Text(
                              '$formattedDate',
                              style: GoogleFonts.montserrat(
                                fontSize: 14, fontWeight: FontWeight.normal
                              ),
                            ),
                          ],
                        ),
                        Row(
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
                              child: Text(
                                '${flight.duration}',
                                style: GoogleFonts.poppins(
                                    fontSize: 14, fontWeight: FontWeight.normal),
                              ),
                            ),

                            Text(
                              "1:05",
                              style: GoogleFonts.poppins(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),


          );
        },
      ),
    );
  }
}

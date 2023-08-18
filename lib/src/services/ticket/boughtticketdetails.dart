import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class BoughtTicketDetails extends StatefulWidget {
  @override
  _BoughtTicketDetailsState createState() => _BoughtTicketDetailsState();
}

class _BoughtTicketDetailsState extends State<BoughtTicketDetails> {
  List<Map<String, dynamic>> _userTickets = [];

  @override
  void initState() {
    super.initState();
    _fetchUserTickets();
  }

  Future<void> _fetchUserTickets() async {
    final User? user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      List<Map<String, dynamic>> tickets =
          await fetchUserTicketsFromMovedTicketCollection(user.email!);
      setState(() {
        _userTickets = tickets;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My Tickets",
          style: GoogleFonts.montserrat(
            fontWeight: FontWeight.bold,
            fontSize: 17,
          ),
        ),
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: _userTickets.length,
                itemBuilder: (context, index) {
                  return
                      // Card(
                      //   margin:
                      //       const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                      //   elevation: 3,
                      //   child: Padding(
                      //     padding: const EdgeInsets.all(16.0),
                      //     child: Column(
                      //       crossAxisAlignment: CrossAxisAlignment.start,
                      //       children: [
                      //         Text(
                      //           'Airline: ${_userTickets[index]['airline']}',
                      //         ),
                      //         Text(
                      //           'Date: ${formatDate(_userTickets[index]['date'])}',
                      //         ),
                      //         Text('Duration: ${_userTickets[index]['duration']}'),
                      //         Text(
                      //             'Flight Class: ${_userTickets[index]['flightClass']}'),
                      //         Text(
                      //             'From: ${_userTickets[index]['fromDestination']}'),
                      //         Text('To: ${_userTickets[index]['toDestination']}'),
                      //         Text('Price: ${_userTickets[index]['price']}'),
                      //          // Text('User Email: ${_userTickets[index]['userEmail']}'),
                      //       ],
                      //     ),
                      //   ),
                      // );
                      Card(
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
                                  padding: const EdgeInsets.only(
                                    left: 14.0,
                                    top: 16,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '${_userTickets[index]['airline']}',
                                        style: GoogleFonts.poppins(
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        '${_userTickets[index]['fno']}',
                                        style: GoogleFonts.poppins(
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      // Text(
                                      //   "#TRXT1686413083146",
                                      //   style: GoogleFonts.poppins(
                                      //       fontSize: 13, fontWeight: FontWeight.bold),
                                      // ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 16.0, right: 18),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '${formatDate(_userTickets[index]['date'])}',
                                    style: GoogleFonts.poppins(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.8,
                          child: const Divider(thickness: 2),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 18.0, right: 18, bottom: 12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '${_userTickets[index]['fromDestination']}',
                                    style: GoogleFonts.poppins(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    "Duration",
                                    style: GoogleFonts.poppins(
                                      fontSize: 14,
                                    ),
                                  ),
                                  Text(
                                    '${_userTickets[index]['toDestination']}',
                                    style: GoogleFonts.poppins(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Center(
                                    child: Text(
                                      '${formatDate(_userTickets[index]['date'])}',
                                      style: GoogleFonts.poppins(
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 8.0),
                                    child: Center(
                                      child: Transform.rotate(
                                        angle: 1.5,
                                        child: const Icon(
                                          Icons.local_airport_rounded,
                                          color: Colors.deepOrange,
                                          size: 15,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    '${formatDate(_userTickets[index]['date'])}',
                                    style: GoogleFonts.poppins(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '${_userTickets[index]['arrival']}',
                                    style: GoogleFonts.poppins(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 8.0),
                                    child: Text(
                                      '${_userTickets[index]['duration']}',
                                      style: GoogleFonts.poppins(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Text(
                                    '${_userTickets[index]['departure']}',
                                    style: GoogleFonts.poppins(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                              SizedBox(height: 8,),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '${_userTickets[index]['flightClass']}',
                                    style: GoogleFonts.poppins(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  Text(
                                    '\$${_userTickets[index]['price']}',
                                    style: GoogleFonts.poppins(
                                        fontSize: 12,
                                        color: Colors.green,
                                        fontWeight: FontWeight.w600),
                                  ),

                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  String formatDate(Timestamp timestamp) {
    DateTime dateTime = timestamp.toDate();
    final formatter = DateFormat('dd-MM-yy');
    return formatter.format(dateTime);
  }
}

Future<List<Map<String, dynamic>>> fetchUserTicketsFromMovedTicketCollection(
    String userEmail) async {
  try {
    QuerySnapshot snapshot = await FirebaseFirestore.instance
        .collection('Moved Ticket')
        .where('userEmail', isEqualTo: userEmail)
        .get();

    List<Map<String, dynamic>> userTickets =
        snapshot.docs.map((doc) => doc.data() as Map<String, dynamic>).toList();

    return userTickets;
  } catch (e) {
    print('Error fetching user tickets: $e');
    return [];
  }
}

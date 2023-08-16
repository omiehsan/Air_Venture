import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class Arrival extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Header
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "FIGHT",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600, fontSize: 14),
                ),
                Text(
                  "FROM",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600, fontSize: 14),
                ),
                Text(
                  "ARRIVALS",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600, fontSize: 14),
                ),
                Text(
                  "STATUS",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600, fontSize: 14),
                ),
              ],
            ),
          ),

          // List of Departures
          Expanded(
            child: StreamBuilder<QuerySnapshot>(
              stream: FirebaseFirestore.instance
                  .collection('FlightStatus')
                  .snapshots(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(child: CircularProgressIndicator());
                }
                if (snapshot.hasError) {
                  return Center(child: Text('Error: ${snapshot.error}'));
                }
                return ListView.builder(
                  itemCount: snapshot.data!.docs.length,
                  itemBuilder: (context, index) {
                    DocumentSnapshot status = snapshot.data!.docs[index];
                    return Card(
                      margin: const EdgeInsets.symmetric(
                        horizontal: 8),
                      elevation: 0,
                      child: Padding(
                        padding: EdgeInsets.all(14),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(status['fno'],
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w600, fontSize: 14)),
                            Text(status['From'],
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w600, fontSize: 14)),
                            Text(status['arrival'],
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w600, fontSize: 14)),
                            Text('${status['status']}',
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w600, fontSize: 14)),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  String formatDate(Timestamp? timestamp) {
    if (timestamp == null) return 'Unknown';
    var date = timestamp.toDate();
    var formatter = DateFormat('dd/MM/yy');
    return formatter.format(date);
  }
}

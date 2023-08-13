import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hawai_jubu/src/services/ticket/ticket_view.dart';

class TicketList extends StatelessWidget {
  const TicketList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[50],
      appBar: AppBar(
        title: Text("Ticket", style: GoogleFonts.poppins(
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
      body: SizedBox(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: Column(
              children: [
                TicketView()
              ],
            ),
          ),
        )
      )
    );
  }
}

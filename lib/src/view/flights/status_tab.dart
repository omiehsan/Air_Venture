import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hawai_jubu/src/view/_screen/contact_us/pre_booking_qs_packages.dart';
import 'package:hawai_jubu/src/view/flights/arrival.dart';
import 'package:hawai_jubu/src/view/flights/departure.dart';

class FlightStatus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // Number of tabs
      child: Scaffold(
        appBar: AppBar(
          title: Text('Flight Status',style: GoogleFonts.montserrat(
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
          bottom: const TabBar(
            tabs: [
              Tab(
                text: 'Departure',
              ),
              Tab(
                text: 'Arrivals',
              )
            ],
          ),
        ),
        body: TabBarView(
          children: [Departure(), Arrival()],
        ),
      ),
    );
  }
}

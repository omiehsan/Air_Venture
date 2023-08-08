import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../utils/constaints/styles_colors.dart';
import '../../navigations/navigation_bar/top_bar.dart';
import 'package:get/get.dart';


class IssuesBooking extends StatelessWidget {
  const IssuesBooking({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text("Issues with Booking",
            style: GoogleFonts.poppins(
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
      body: Center(
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.7,
          width: MediaQuery.of(context).size.width * 0.6,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children:  [
              const Center(
                child: Image(
                  image: AssetImage(
                    'assets/images/trip_issues.png',
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text("Seems you don't have any bookings", style: Styles.headLineStyle10,)
            ],
          ),
        ),
      ),
    );
  }
}

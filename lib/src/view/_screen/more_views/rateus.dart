import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hawai_jubu/src/utils/constaints/images.dart';
class RateUs extends StatelessWidget {
  const RateUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                SizedBox(
                  height: 200,
                    width: double.infinity,
                    child: Image.asset(jOnBBanner)),
                Text("Enjoying airVenture?",style: GoogleFonts.poppins(
                    fontWeight: FontWeight.normal, fontSize: 20)),
                const SizedBox(height: 8,),
                Text("Please rate your experience",style: GoogleFonts.poppins(
                    fontWeight: FontWeight.normal, fontSize: 14)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: ()=> Get.back(),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text(
                    'REMIND ME LATER',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.normal, fontSize: 16),
                  ),
                ),
                const SizedBox(width: 5),
                Container(
                  width: MediaQuery.of(context).size.width * 0.40,
                  height: 40.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: const LinearGradient(
                      colors: [Color(0xFFff9133), Color(0xFFe16c06)],
                    ),
                  ),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Text(
                      'RATE 5 STARS',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.normal, fontSize: 16),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

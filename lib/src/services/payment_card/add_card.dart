import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/constaints/styles_colors.dart';

class AddCard extends StatelessWidget {
  const AddCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: IconButton(
          onPressed:
                ()=> Get.back(),
          icon: const Icon(Icons.arrow_back),
        ),
        title: Text("Payment Methods",
            style: GoogleFonts.poppins(fontWeight: FontWeight.bold,
                fontSize: 17)),
        centerTitle: true,
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
      body: Column(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Center(
                  child: Image(
                    image: AssetImage(
                      'assets/images/adding-credit-card-icon-.png',
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Text("No card saved", style: Styles.headLineStyle2),
                SizedBox(height: 10),
                Text("There are no payment Methods", style: Styles.headLineStyle10,)

              ],
            ),
          ),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.92,
              height: 50.0,
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
                  'Add Card',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.normal, fontSize: 16),
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}

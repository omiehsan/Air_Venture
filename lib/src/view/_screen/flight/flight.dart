// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';
// import 'package:google_fonts/google_fonts.dart';
//
// class FlightResult extends StatelessWidget {
//
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading:
//             IconButton(onPressed: () => Get.back(), icon: const Icon(Icons.arrow_back)),
//         title: const Text("Flights"),
//         flexibleSpace: Container(
//           // Add a flexibleSpace to set the gradient background
//           decoration: const BoxDecoration(
//             gradient: LinearGradient(
//               begin: Alignment.topLeft,
//               end: Alignment.bottomRight,
//               colors: <Color>[Color(0xFFfc8a28), Color(0xFFc55c00)],
//             ),
//           ),
//         ),
//       ),
//       backgroundColor: Colors.brown.shade50,
//       body: StreamBuilder<QuerySnapshot>(
//         stream: FirebaseFirestore.instance.collection('Destination').snapshots(),
//     builder: (context, snapshot) {
//     if (snapshot.connectionState == ConnectionState.waiting) {
//     return const Center(child: CircularProgressIndicator());
//     }
//     if (snapshot.hasError) {
//     return Center(child: Text('Error: ${snapshot.error}'));
//     }
//       SingleChildScrollView(
//         child: Card(
//           child: Container(
//             padding: EdgeInsets.all(15),
//             child: Column(
//               children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children:  [
//                     Text(destination['To'],style: GoogleFonts.montserrat(
//                         fontSize: 13, fontWeight: FontWeight.w600),),
//                     Text("Chittagong",style: GoogleFonts.montserrat(
//                         fontSize: 13, fontWeight: FontWeight.w600),),
//                   ],
//                 ),
//                 SizedBox(height: 10),
//                 Row(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Row(
//                       children: [
//                         InkWell(
//                           // onTap: () {},
//                           child: Material(
//                             borderRadius: BorderRadius.circular(10),
//                             elevation: 10,
//                             child: Container(
//                               height: 50,
//                               width: 50,
//                               decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(10),
//                                 image: const DecorationImage(
//                                   fit: BoxFit.fill,
//                                   image: AssetImage("assets/images/img_1.png"),
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ),
//                         SizedBox(width: 10),
//                         Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Text(
//                               "IndiGO",
//                               style: GoogleFonts.poppins(
//                                   fontSize: 13, fontWeight: FontWeight.bold),
//                             ),
//                             Text(
//                               "BDA-189",
//                               style: GoogleFonts.poppins(
//                                 fontSize: 12,
//                               ),
//                             ),
//                             Text(
//                               "Economy",
//                               style: GoogleFonts.poppins(
//                                 fontSize: 12,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.end,
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Text(
//                           "11 Jun 2023",
//                           style: GoogleFonts.poppins(
//                             fontWeight: FontWeight.normal,
//                           ),
//                         ),
//                         Text(
//                           " \$400",
//                           style: GoogleFonts.poppins(
//                               fontWeight: FontWeight.bold, color: Colors.green),
//                         ),
//                         Text(
//                           "Duration",
//                           style: GoogleFonts.poppins(
//                             fontWeight: FontWeight.normal,
//                           ),
//                         ),
//                       ],
//                     )
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

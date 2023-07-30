// import 'package:fluentui_icons/fluentui_icons.dart';
// import 'package:flutter/material.dart';
// import 'package:hawai_jubu/src/view/navigations/search_bar/dropdown.dart';
// import '../../../utils/constaints/styles_colors.dart';
//
//
// class SearchBoxs extends StatefulWidget {
//   const SearchBoxs({Key? key}) : super(key: key);
//
//   @override
//   _SearchBoxsState createState() => _SearchBoxsState();
// }
//
// class _SearchBoxsState extends State<SearchBoxs> {
//   bool isClicked = false;
//
//   void onTap() {
//     setState(() {
//       isClicked = !isClicked;
//     });
//   }
//
//   DateTime _dateTime = DateTime.now();
//
//   void _showDatePicker() {
//     showDatePicker(
//       context: context,
//       initialDate: DateTime.now(),
//       firstDate: DateTime.now(),
//       lastDate: DateTime(2025),
//     ).then((value) {
//       setState(() {
//         _dateTime = value!;
//       });
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.brown.shade100,
//       padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
//       child: ListView(
//         shrinkWrap: true,
//         physics: const NeverScrollableScrollPhysics(),
//         children: [
//           Container(
//             padding: const EdgeInsets.symmetric(horizontal: 15),
//             child: Row(
//               children: [
//                 ElevatedButton(
//                   onPressed: onTap,
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor:
//                         isClicked ? Colors.white70 : Colors.black12,
//                     shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(10)),
//                   ),
//                   child: const Text(
//                     ' One Way ',
//                     style: TextStyle(
//                       fontSize: 16,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.white,
//                     ),
//                   ),
//                 ),
//                 const SizedBox(
//                   width: 8,
//                 ),
//                 ElevatedButton(
//                   onPressed: onTap,
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor:
//                         isClicked ? Colors.black12 : Colors.white70,
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                   ),
//                   child: const Text(
//                     'Round Trip',
//                     style: TextStyle(
//                       fontSize: 16,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.black,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           const SizedBox(height: 5),
//           ListTile(
//             title: SizedBox(
//               height: MediaQuery.of(context).size.height * 0.06,
//               child: TextFormField(
//                 decoration: InputDecoration(
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(5),
//                       borderSide: BorderSide.none,
//                     ),
//                     fillColor: Colors.black26,
//                     filled: true,
//                     prefixIcon: const Icon(
//                       Icons.location_on,
//                       color: Colors.white70,
//                     ),
//                     hintText: 'From',
//                     hintStyle: const TextStyle(
//                       color: Colors.white,
//                     ),
//                     contentPadding:
//                         EdgeInsets.symmetric(horizontal: 10, vertical: 10)),
//               ),
//             ),
//           ),
//           ListTile(
//             title: SizedBox(
//               height: MediaQuery.of(context).size.height * 0.06,
//               child: TextFormField(
//                 decoration: InputDecoration(
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(5),
//                       borderSide: BorderSide.none,
//                     ),
//                     fillColor: Colors.black26,
//                     filled: true,
//                     prefixIcon: const Icon(
//                       FluentSystemIcons.ic_fluent_globe_location_regular,
//                       color: Colors.white70,
//                     ),
//                     hintText: 'To',
//                     hintStyle: TextStyle(
//                       color: Colors.white,
//                     ),
//                     contentPadding:
//                         EdgeInsets.symmetric(horizontal: 10, vertical: 10)),
//               ),
//             ),
//           ),
//           ListTile(
//             title: SizedBox(
//               height: MediaQuery.of(context).size.height * 0.06,
//               child: InkWell(
//                 onTap: _showDatePicker,
//                 child: Container(
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(5),
//                     color: Colors.black26,
//                   ),
//                   padding:
//                       const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
//                   child: Row(
//                     children: [
//                       const Padding(
//                         padding: EdgeInsets.fromLTRB(0, 0, 15, 0),
//                         child:
//                             Icon(Icons.calendar_month, color: Colors.white70),
//                       ),
//                       Text(_dateTime.toString(), style: Styles.headLineStyle6)
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ),
//           // ListTile(
//           //   title: SizedBox(
//           //     height: MediaQuery.of(context).size.height * 0.06,
//           //     child: InkWell(
//           //       onTap: () {},
//           //       child: Container(
//           //         decoration: BoxDecoration(
//           //           borderRadius: BorderRadius.circular(5),
//           //           color: Colors.black26,
//           //         ),
//           //         padding: const EdgeInsets.symmetric(
//           //           horizontal: 12,
//           //           vertical: 10,
//           //         ),
//           //         child: Row(
//           //           children: const [
//           //             Padding(
//           //               padding: EdgeInsets.fromLTRB(0, 0, 15, 0),
//           //               child: Icon(
//           //                 Icons.supervisor_account,
//           //                 color: Colors.white70,
//           //               ),
//           //             ),
//           //             Text(
//           //               'Traveller',
//           //               style: TextStyle(
//           //                 color: Colors.white,
//           //               ),
//           //             ),
//           //           ],
//           //         ),
//           //       ),
//           //     ),
//           //   ),
//           // ),
//           MyListTileWithDropdown(),
//           const SizedBox(height: 5),
//           Center(
//             child: Container(
//               width: MediaQuery.of(context).size.width * 0.9,
//               height: 44.0,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(10),
//                 gradient: const LinearGradient(
//                   colors: [Color(0xFFff9133), Color(0xFFe16c06)],
//                 ),
//               ),
//               child: ElevatedButton(
//                 onPressed: () {},
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: Colors.transparent,
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                 ),
//                 child: const Text('Search'),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }



import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import '../../../utils/constaints/styles_colors.dart';


class SearchBoxs extends StatefulWidget {
  const SearchBoxs({Key? key}) : super(key: key);

  @override
  _SearchBoxsState createState() => _SearchBoxsState();
}

class _SearchBoxsState extends State<SearchBoxs> {
  bool isClicked = false;

  void onTap() {
    setState(() {
      isClicked = !isClicked;
    });
  }

  DateTime _dateTime = DateTime.now();

  void _showDatePicker() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2025),
    ).then((value) {
      setState(() {
        _dateTime = value!;
      });
    });
  }

  void onSearchPressed() async {
    String fromDestination = ""; // Get the value from the From text field
    String toDestination = ""; // Get the value from the To text field
    DateTime date = _dateTime;

    try {
      final querySnapshot = await FirebaseFirestore.instance
          .collection('flights')
          .where('From', isEqualTo: fromDestination)
          .where('To', isEqualTo: toDestination)
          .where('Date', isEqualTo: date)
          .get();

      // Process the query results


      final List<DocumentSnapshot> flightDocs = querySnapshot.docs;


      // You can now use the data from flightDocs to display the search results

    } catch (e) {
      print('Error while searching flights: $e');
      // Handle the error if needed
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.brown.shade100,
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      child: ListView(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                ElevatedButton(
                  onPressed: onTap,
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                    isClicked ? Colors.white70 : Colors.black12,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  child: const Text(
                    ' One Way ',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                ElevatedButton(
                  onPressed: onTap,
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                    isClicked ? Colors.black12 : Colors.white70,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text(
                    'Round Trip',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 5),
          ListTile(
            title: SizedBox(
              height: MediaQuery.of(context).size.height * 0.06,
              child: TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide.none,
                    ),
                    fillColor: Colors.black26,
                    filled: true,
                    prefixIcon: const Icon(
                      Icons.location_on,
                      color: Colors.white70,
                    ),
                    hintText: 'From',
                    hintStyle: const TextStyle(
                      color: Colors.white,
                    ),
                    contentPadding:
                    EdgeInsets.symmetric(horizontal: 10, vertical: 10)),
              ),
            ),
          ),
          ListTile(
            title: SizedBox(
              height: MediaQuery.of(context).size.height * 0.06,
              child: TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide.none,
                    ),
                    fillColor: Colors.black26,
                    filled: true,
                    prefixIcon: const Icon(
                      FluentSystemIcons.ic_fluent_globe_location_regular,
                      color: Colors.white70,
                    ),
                    hintText: 'To',
                    hintStyle: TextStyle(
                      color: Colors.white,
                    ),
                    contentPadding:
                    EdgeInsets.symmetric(horizontal: 10, vertical: 10)),
              ),
            ),
          ),
          ListTile(
            title: SizedBox(
              height: MediaQuery.of(context).size.height * 0.06,
              child: InkWell(
                onTap: _showDatePicker,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.black26,
                  ),
                  padding:
                  const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                  child: Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 15, 0),
                        child:
                        Icon(Icons.calendar_month, color: Colors.white70),
                      ),
                      Text(_dateTime.toString(), style: Styles.headLineStyle6)
                    ],
                  ),
                ),
              ),
            ),
          ),
          ListTile(
            title: SizedBox(
              height: MediaQuery.of(context).size.height * 0.06,
              child: InkWell(
                onTap: () {},
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.black26,
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 10,
                  ),
                  child: Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 15, 0),
                        child: Icon(
                          Icons.supervisor_account,
                          color: Colors.white70,
                        ),
                      ),
                      Text(
                        'Traveller',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 5),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: 44.0,
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
                child: const Text('Search'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// import 'package:cloud_firestore/cloud_firestore.dart';
//
// class FlightSearchModel {
//   String? id;
//   final String? duration;
//   final String? airline;
//   final num? price;
//   final String fromDestination;
//   final String toDestination;
//   final String flightClass;
//   final DateTime date;
//
//   FlightSearchModel({
//     this.id,
//     required this.fromDestination,
//     required this.toDestination,
//     required this.date,
//     required this.flightClass,
//     required this.duration,
//     required this.price,
//     required this.airline,
//   });
//
//   toJson() {
//     return {
//       "From": fromDestination,
//       "To": toDestination,
//       "Class": flightClass,
//       "Duration": duration,
//       "Price": price,
//       "Airline": airline,
//       "Date": date,
//     };
//   }
//
//   factory FlightSearchModel.fromDatabase(
//       DocumentSnapshot<Map<String, dynamic>> document) {
//     final flightData = document.data()!;
//
//     parseDate(data) {
//       if (data == null || data == "") {
//         return DateTime.parse("2023-03-12T18:42:49.608466Z");
//       } else {
//         final timeToMS = data.millisecondsSinceEpoch;
//         return DateTime.fromMillisecondsSinceEpoch(timeToMS);
//       }
//     }
//
//     return FlightSearchModel(
//       id: document.id,
//       fromDestination: flightData["From"],
//       toDestination: flightData["To"],
//       date: parseDate(flightData["Date"]),
//       flightClass: flightData["Class"],
//       duration: flightData["Duration"],
//       price: flightData["Price"],
//       airline: flightData["Airline"],
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FlightSearchModel {
  String? id;
  String? duration;
  String? airline;
  num? price;
  final String fromDestination;
  final String toDestination;
  final String flightClass;
  final DateTime date;

  FlightSearchModel({
    this.id,
    required this.fromDestination,
    required this.toDestination,
    required this.date,
    required this.flightClass,
    this.duration,
    this.price,
    this.airline,
  });

  // Factory method to create a FlightSearchModel from a Firestore DocumentSnapshot
  factory FlightSearchModel.fromSnapshot(DocumentSnapshot snapshot) {
    final data = snapshot.data() as Map<String, dynamic>;
    return FlightSearchModel(
      id: snapshot.id,
      fromDestination: data['From'],
      toDestination: data['To'],
      flightClass: data['Class'],
      duration: data['Duration'],
      price: data['Price'],
      airline: data['Airline'],
      date: (data['Date'] as Timestamp).toDate(),
    );
  }

  toJson() {
    return {
      "From": fromDestination,
      "To": toDestination,
      "Class": flightClass,
      "Duration": duration,
      "Price": price,
      "Airline": airline,
      "Date": date,
    };
  }
}

// Function to search flights based on given parameters
Future<List<FlightSearchModel>> searchFlights(
    String fromDestination,
    String toDestination,
    String flightClass,
    DateTime date,
    ) async {
  final firestore = FirebaseFirestore.instance;
  final flightCollection = firestore.collection('flights');

  try {
    // Perform the search query using where clauses to filter the data
    final query = await flightCollection
        .where('From', isEqualTo: fromDestination)
        .where('To', isEqualTo: toDestination)
        .where('Class', isEqualTo: flightClass)
        .where('Date', isEqualTo: date)
        .get();

    // Convert the query results to FlightSearchModel objects
    final List<FlightSearchModel> flightResults = query.docs
        .map((doc) => FlightSearchModel.fromSnapshot(doc))
        .toList();

    return flightResults;
  } catch (e) {
    print('Error while searching flights: $e');
    return [];
  }
}

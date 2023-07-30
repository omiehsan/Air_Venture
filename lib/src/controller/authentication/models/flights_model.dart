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

  factory FlightSearchModel.fromDatabase(
      DocumentSnapshot<Map<String, dynamic>> document) {
    final flightData = document.data()!;

    parseDate(data) {
      if (data == null || data == "") {
        return DateTime.parse("2023-03-12T18:42:49.608466Z");
      } else {
        final timeToMS = data.millisecondsSinceEpoch;
        return DateTime.fromMillisecondsSinceEpoch(timeToMS);
      }
    }

    return FlightSearchModel(
      id: document.id,
      fromDestination: flightData["From"],
      toDestination: flightData["To"],
      date: parseDate(flightData["Date"]),
      flightClass: flightData["Class"],
    );
  }
}

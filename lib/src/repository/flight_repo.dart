import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import '../controller/authentication/models/flights_model.dart';

class FlightRepository extends GetxService {
  static FlightRepository get instance => Get.find();

  final _db = FirebaseFirestore.instance;

  Future<List<FlightSearchModel>> getFlightDetails() async {
    final snapshot = await _db.collection("Destination").get();
    final flightData =
        snapshot.docs.map((e) => FlightSearchModel.fromSnapshot(e)).toList();
    return flightData;
  }
}

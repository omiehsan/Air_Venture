import 'package:flutter/material.dart';
import '../../../controller/authentication/models/flights_model.dart'; // Import the FlightSearchModel

class Flight_Result extends StatelessWidget {
  final List<FlightSearchModel> searchResults;

  Flight_Result({required this.searchResults});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flight Search Results'),
      ),
      body: ListView.builder(
        itemCount: searchResults.length,
        itemBuilder: (context, index) {
          FlightSearchModel flight = searchResults[index];
          // You can now display the flight details using the `flight` object.
          return ListTile(
            title: Text('Airline: ${flight.airline}'),
            subtitle: Text('Price: ${flight.price}'),

            // Display other flight details here as needed.
          );

        },
      ),
    );
  }
}

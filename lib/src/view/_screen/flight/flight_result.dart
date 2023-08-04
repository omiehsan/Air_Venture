import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../../controller/authentication/models/flights_model.dart'; // Import the FlightSearchModel
import '../../flights/destination_details.dart';

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
          final formattedDate = DateFormat('dd/MM/yy').format(flight.date);

          return GestureDetector(
            onTap: () {
              // Navigate to the DestinationDetailsPage with the selected flight data.
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DestinationDetailsPage(flight: flight),
                ),
              );
            },
            child: Card(
              elevation: 2,
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Airline:'),
                        Text('${flight.airline}'),
                      ],
                    ),
                    SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Price:'),
                        Text('\$${flight.price}'),
                      ],
                    ),
                    SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('From Destination:'),
                        Text('${flight.fromDestination}'),
                      ],
                    ),
                    SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Date:'),
                        Text('$formattedDate'), // Use the formatted date
                      ],
                    ),
                    SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('To Destination:'),
                        Text('${flight.toDestination}'),
                      ],
                    ),
                    SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Duration:'),
                        Text('${flight.duration}'),
                      ],
                    ),
                    SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Flight Class:'),
                        Text('${flight.flightClass}'),
                      ],
                    ),
                    // Display other flight details here as needed.
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

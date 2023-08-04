import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../controller/authentication/models/flights_model.dart'; // Import the FlightSearchModel

class DestinationDetailsPage extends StatelessWidget {
  final FlightSearchModel flight;

  DestinationDetailsPage({required this.flight});

  @override
  Widget build(BuildContext context) {
    final formattedDate = DateFormat('dd/MM/yy').format(flight.date);

    return Scaffold(
      appBar: AppBar(
        title: Text('Flight Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Airline: ${flight.airline}'),
            SizedBox(height: 8),
            Text('Price: \$${flight.price}'),
            SizedBox(height: 8),
            Text('From Destination: ${flight.fromDestination}'),
            SizedBox(height: 8),
            Text('Date: $formattedDate'),
            SizedBox(height: 8),
            Text('To Destination: ${flight.toDestination}'),
            SizedBox(height: 8),
            Text('Duration: ${flight.duration}'),
            SizedBox(height: 8),
            Text('Flight Class: ${flight.flightClass}'),
            // Display other flight details here as needed.
          ],
        ),
      ),
    );
  }
}

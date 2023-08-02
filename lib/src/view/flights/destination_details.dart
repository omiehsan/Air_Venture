import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class DestinationDetailsPage extends StatelessWidget {
  final DocumentSnapshot destination;

  DestinationDetailsPage({required this.destination});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Destination Details'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Destination: ${destination['To']}'),
            Text('Airline: ${destination['Airline']}'),
            Text('Class: ${destination['Class']}'),
            Text('Date: ${destination['Date']}'),
            Text('Duration: ${destination['Duration']}'),
            Text('From: ${destination['From']}'),
            Text('Price: \$${destination['Price']}'),
          ],
        ),
      ),
    );
  }
}

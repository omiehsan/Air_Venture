import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'destination_details.dart';

class DestinationListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Destination List'),
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance.collection('Destination').snapshots(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          }
          return ListView.builder(
            itemCount: snapshot.data!.docs.length,
            itemBuilder: (context, index) {
              DocumentSnapshot destination = snapshot.data!.docs[index];
              return ListTile(
                title: Text(destination['To']),
                subtitle: Text('Airline: ${destination['Airline']}, Class: ${destination['Class']}'),
                trailing: Text('\$${destination['Price']}'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DestinationDetailsPage(destination: destination),
                    ),
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}

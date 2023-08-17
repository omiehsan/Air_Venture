import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart';

class BoughtTicketDetails extends StatefulWidget {
  @override
  _BoughtTicketDetailsState createState() => _BoughtTicketDetailsState();
}

class _BoughtTicketDetailsState extends State<BoughtTicketDetails> {
  List<Map<String, dynamic>> _userTickets = [];

  @override
  void initState() {
    super.initState();
    _fetchUserTickets();
  }

  Future<void> _fetchUserTickets() async {
    final User? user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      List<Map<String, dynamic>> tickets =
      await fetchUserTicketsFromMovedTicketCollection(user.email!);
      setState(() {
        _userTickets = tickets;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bought Ticket Details'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: _userTickets.length,
                itemBuilder: (context, index) {
                  return Card(
                    margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                    elevation: 3,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Airline: ${_userTickets[index]['airline']}',
                          ),
                          Text(
                            'Date: ${formatDate(_userTickets[index]['date'])}',
                          ),
                          Text('Duration: ${_userTickets[index]['duration']}'),
                          Text(
                              'Flight Class: ${_userTickets[index]['flightClass']}'),
                          Text(
                              'From: ${_userTickets[index]['fromDestination']}'),
                          Text('To: ${_userTickets[index]['toDestination']}'),
                          Text('Price: ${_userTickets[index]['price']}'),
                          // Text('User Email: ${_userTickets[index]['userEmail']}'),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  String formatDate(Timestamp timestamp) {
    DateTime dateTime = timestamp.toDate();
    final formatter = DateFormat('dd-MM-yyyy, hh:mm a');
    return formatter.format(dateTime);
  }
}

Future<List<Map<String, dynamic>>> fetchUserTicketsFromMovedTicketCollection(
    String userEmail) async {
  try {
    QuerySnapshot snapshot = await FirebaseFirestore.instance
        .collection('Moved Ticket')
        .where('userEmail', isEqualTo: userEmail)
        .get();

    List<Map<String, dynamic>> userTickets =
    snapshot.docs.map((doc) => doc.data() as Map<String, dynamic>).toList();

    return userTickets;
  } catch (e) {
    print('Error fetching user tickets: $e');
    return [];
  }
}

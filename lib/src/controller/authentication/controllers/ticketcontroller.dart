import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/movedticketmodel.dart';

class TicketController {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<void> moveTicketToNewDatabase(String userEmail, MovedTicketModel ticket) async {
    CollectionReference newDatabase = _firestore.collection('Moved Ticket');

    await newDatabase.add(ticket.toMap());
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../services/payment_card/add_card.dart';
import 'booking_issues.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contact Us"),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: <Color>[Color(0xFFfc8a28), Color(0xFFc55c00)],
            ),
          ),
        ),
      ),
      backgroundColor: Colors.brown.shade50,
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 16.0),
        child: ListView(
          children: [
            const Padding(
              padding: EdgeInsets.all(15),
            ),
            const ListTile(
              leading: CircleAvatar(
                radius: 17,
                backgroundColor: Colors.deepOrange,
                child: Icon(Icons.warning, size: 20, color: Colors.white70),
              ),
              title: Text("Please note:"),
              subtitle: Text(
                "airVenture representatives will never ask for any personal data like credit/debit card number, CVV, OTP, card details, userIDs, passwords, etc.Bewareof any one who is claiming to be associate with airVenture. Acting on any requests may make victim of fraud, potentially leading to the loss of valuable information or money.",
              ),
              tileColor: Colors.white,
            ),
            const SizedBox(
              height: 25,
            ),
            const ListTile(
              leading: Text("All Services"),
            ),
            ListTile(
              leading: const CircleAvatar(
                radius: 16,
                backgroundColor: Colors.black12,
                child: Icon(
                  Icons.card_travel,
                  size: 20,
                  color: Colors.deepOrange,
                ),
              ),
              title: const Text("Issue with Booking"),
              subtitle: const Text("Facing issue with an existing booking"),
              trailing: const Icon(Icons.chevron_right),
              tileColor: Colors.white,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => IssuesBooking(),
                  ),
                );
              },
            ),
            const Divider(
              height: 1.5,
            ),
            ListTile(
              leading: const CircleAvatar(
                radius: 16,
                backgroundColor: Colors.black12,
                child: Icon(
                  Icons.manage_accounts,
                  size: 20,
                  color: Colors.deepOrange,
                ),
              ),
              title: const Text("Account Settings"),
              subtitle: const Text("Update email,phone no. or password"),
              trailing: const Icon(Icons.chevron_right),
              tileColor: Colors.white,
              onTap: () {},
            ),
            const Divider(
              height: 1.5,
            ),
            ListTile(
              leading: const CircleAvatar(
                radius: 16,
                backgroundColor: Colors.black12,
                child: Icon(
                  Icons.generating_tokens,
                  size: 20,
                  color: Colors.deepOrange,
                ),
              ),
              title: const Text("airVenture Tokens"),
              subtitle:
                  const Text("View our money transaction details and rules"),
              trailing: const Icon(Icons.chevron_right),
              tileColor: Colors.white,
              onTap: () {},
            ),
            const Divider(
              height: 1.5,
            ),
            ListTile(
              leading: const CircleAvatar(
                radius: 16,
                backgroundColor: Colors.black12,
                child: Icon(
                  Icons.search,
                  size: 20,
                  color: Colors.deepOrange,
                ),
              ),
              title: const Text("Pre-Booking Queries"),
              subtitle:
                  const Text("Facing issues while booking? Not able to book?"),
              trailing: const Icon(Icons.chevron_right),
              tileColor: Colors.white,
              onTap: () {},
            ),
            const Divider(
              height: 1.5,
            ),
            ListTile(
              leading: const CircleAvatar(
                radius: 16,
                backgroundColor: Colors.black12,
                child: Icon(
                  Icons.health_and_safety,
                  size: 20,
                  color: Colors.deepOrange,
                ),
              ),
              title: const Text("COVID-19"),
              subtitle: const Text("Facing issues due to virus"),
              trailing: const Icon(Icons.chevron_right),
              tileColor: Colors.white,
              onTap: () {},
            ),
            const Divider(
              height: 1.5,
            ),
            ListTile(
              leading: const CircleAvatar(
                radius: 16,
                backgroundColor: Colors.black12,
                child: Icon(
                  Icons.help,
                  size: 20,
                  color: Colors.deepOrange,
                ),
              ),
              title: const Text("airVenture assured"),
              subtitle: const Text("Get free cancellation benefits"),
              trailing: const Icon(Icons.chevron_right),
              tileColor: Colors.white,
              onTap: () {},
            ),
            const Divider(
              height: 1.5,
            ),
            ListTile(
              leading: const CircleAvatar(
                radius: 16,
                backgroundColor: Colors.black12,
                child: Icon(
                  Icons.currency_exchange,
                  size: 20,
                  color: Colors.deepOrange,
                ),
              ),
              title: const Text("Manage Payment Methods"),
              subtitle: const Text("Delete saved card or link/delink wallet"),
              trailing: const Icon(Icons.chevron_right),
              tileColor: Colors.white,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AddCard(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

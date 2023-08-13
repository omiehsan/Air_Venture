import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hawai_jubu/src/view/_screen/more_views/rateus.dart';
import '../../../services/payment_card/add_card.dart';
import '../../navigations/navigation_bar/notifications.dart';
import '../customer/customer_services.dart';
import '../login/login.dart';
import 'app_settings.dart';

class MoreView extends StatelessWidget {
  const MoreView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("More",
            style:
                GoogleFonts.poppins(fontWeight: FontWeight.bold, fontSize: 17,color: Colors.white)),
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
      body: ListView(
        children: [
          ListTile(
            title: const Text("Log In to Explore"),
            subtitle: Text("Get started >",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.normal, fontSize: 14)),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginScreen(),
                  ));
            },
          ),
          const SizedBox(
            height: 20,
          ),
          ListTile(
            leading: const Icon(Icons.perm_phone_msg_sharp,
                color: Colors.deepOrange),
            title: const Text("Customer Service"),
            subtitle: Text("Get help your booking & more",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.normal, fontSize: 14)),
            splashColor: Colors.deepOrange,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CustomerServices(),
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.notifications,
              color: Colors.deepOrange,
            ),
            title: const Text("Notifications"),
            subtitle: Text("View all your notifications",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.normal, fontSize: 14)),
            splashColor: Colors.deepOrange,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const NotificationScreen(),
                ),
              );
            },
          ),
          const Divider(height: 5),
          ListTile(
            leading: const Icon(
              Icons.credit_card,
              color: Colors.deepOrange,
            ),
            title: const Text("Manage Payment Methods"),
            subtitle: Text("Add & edit your Methods",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.normal, fontSize: 14)),
            splashColor: Colors.deepOrange,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AddCard(),
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.share,
              color: Colors.deepOrange,
            ),
            title: const Text("Share App"),
            subtitle: Text("Share the app with your friends",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.normal, fontSize: 14)),
            splashColor: Colors.deepOrange,
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(
              Icons.thumb_up,
              color: Colors.deepOrange,
            ),
            title: const Text("Rate Us"),
            subtitle: Text("Love this app?Rate us",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.normal, fontSize: 14)),
            splashColor: Colors.deepOrange,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const RateUs(),
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.settings,
              color: Colors.deepOrange,
            ),
            title: const Text("Settings"),
            subtitle: Text("Set notifications, sign out, etc.",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.normal, fontSize: 14)),
            splashColor: Colors.deepOrange,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AppSettings(),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}

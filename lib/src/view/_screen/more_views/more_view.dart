import 'package:flutter/material.dart';
import '../../../services/payment_card/add_card.dart';
import '../../navigations/navigation_bar/notifications.dart';
import '../customer/customer_services.dart';
import '../login/login.dart';


class MoreView extends StatelessWidget {
  const MoreView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown.shade50,
      body: SafeArea(
        child: ListView(
          children: [
            ListTile(
              title: const Text("Log In to Explore"),
              subtitle: const Text("Get started >"),
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
              subtitle: const Text("Get help your booking & more"),
              splashColor: Colors.deepOrange,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>const CustomerServices(),
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
              subtitle: const Text("View all your notifications"),
              trailing: const Text(
                "99+",
              ),
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
              subtitle: const Text("Add & edit your Methods"),
              splashColor: Colors.deepOrange,
              onTap:
                 () {
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
              subtitle: const Text("Share the app with your friends"),
              splashColor: Colors.deepOrange,
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(
                Icons.thumb_up,
                color: Colors.deepOrange,
              ),
              title: const Text("Rate Us"),
              subtitle: const Text("Love this app?Rate us"),
              splashColor: Colors.deepOrange,
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(
                Icons.settings,
                color: Colors.deepOrange,
              ),
              title: const Text("Settings"),
              subtitle: const Text("Set notifications, sign out, etc."),
              splashColor: Colors.deepOrange,
              onTap: () {},
            )
          ],
        ),
      ),

    );
  }
}

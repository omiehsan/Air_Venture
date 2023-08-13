import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hawai_jubu/src/view/_screen/more_views/privacypolicy.dart';
import 'package:hawai_jubu/src/view/_screen/more_views/term_sevices.dart';

class AppSettings extends StatefulWidget {
  const AppSettings({Key? key}) : super(key: key);

  @override
  State<AppSettings> createState() => _AppSettingsState();
}

class _AppSettingsState extends State<AppSettings> {
  bool _isMarketingNotificationEnabled = false;

  void _toggleMarketingNotification() {
    setState(() {
      _isMarketingNotificationEnabled = !_isMarketingNotificationEnabled;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Settings",
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.bold,
            fontSize: 17,
              color: Colors.white
          ),
        ),
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
      backgroundColor: Colors.brown[50],
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0,horizontal: 10),
        child: ListView(
          children: [
            ListTile(
              title: Text(
                "Marketing Notifications",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.normal,
                  fontSize: 16,
                ),
              ),
              subtitle: Text(
                "Receive notification about deals & promotions",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.normal,
                  fontSize: 14,
                ),
              ),
              trailing: Switch(
                value: _isMarketingNotificationEnabled,
                onChanged: (value) {
                  _toggleMarketingNotification();
                },
              ),
            ),
            const Divider(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 10),
              child: Text(
                "About",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.normal,
                  fontSize: 18,
                  color: Colors.orange
                ),
              ),
            ),
            ListTile(
              title: Text(
                "Terms of Service",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.normal,
                  fontSize: 16,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const TermofServices(),
                  ),
                );
              },
            ),
            ListTile(
              title: Text(
                "Privacy Policy",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.normal,
                  fontSize: 16,
                ),
              ),
              splashColor: Colors.deepOrange,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PrivacyPolicy(),
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

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hawai_jubu/src/view/profile/profile_widget.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:lottie/lottie.dart';
import '../../utils/constaints/styles_colors.dart';
import '../../view/navigations/navigation_bar/bottom_bar.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var isDark = MediaQuery.of(context).platformBrightness == Brightness.dark;

    return Scaffold(
      backgroundColor: Colors.brown.shade50,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
      Navigator.push(
      context,
      MaterialPageRoute(
      builder: (context) => BottomBar(),
      ),
      );
      },
          icon: const Icon(LineAwesomeIcons.angle_left),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(isDark ? LineAwesomeIcons.sun : FontAwesomeIcons.moon),
            splashRadius: 1,
          )
        ],
        flexibleSpace: Container(
          // Add a flexibleSpace to set the gradient background
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: <Color>[Color(0xFFfc8a28), Color(0xFFc55c00)],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            child: (Column(
              children: [
                Material(
                  elevation: 10,
                  child: Container(
                    padding: const EdgeInsets.only(top: 25),
                    height: MediaQuery.of(context).size.height * 0.32,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: <Color>[Color(0xFF988459), Color(0xFF635738)],
                      ),
                    ),
                    child: (Column(
                      children: [
                        SizedBox(
                          width: 110,
                          height: 110,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(90),
                            child:  Image(
                              image:
                              NetworkImage("https://source.unsplash.com/random/200x200/?face-"),
                              height: 200,
                              width: 200,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          " Tashrif Jubaer",
                          style: Styles.headLineStyle2,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          "tashrifalive@gmail.com",
                          style: Styles.headLineStyle5,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          width: 160,
                          child: ElevatedButton.icon(
                            icon: const Icon(Icons.manage_accounts_rounded),
                            onPressed: () {},
                            label: const Text('Edit Profile'),
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black26),
                          ),
                        ),
                      ],
                    )),
                  ),
                ),
                // Bottom Part by Tashrif_jubaer
                Container(
                  padding: const EdgeInsets.only(top: 20),
                  child: Column(
                    children: [
                      Container(
                        padding:
                            EdgeInsets.only(right: 10, bottom: 15, left: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ProfileWidget(
                                title: "My Address",
                                icon: Icons.location_on_sharp,
                                onTap: () {}),
                            SizedBox(),
                            ProfileWidget(
                                title: "My Trips",
                                icon: Icons.travel_explore,
                                onTap: () {}),
                          ],
                        ),
                      ),
                      Container(
                        padding:
                            EdgeInsets.only(right: 10, bottom: 15, left: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ProfileWidget(
                                title: "Tickets",
                                icon: Icons.airplane_ticket_sharp,
                                onTap: () {}),
                            SizedBox(),
                            ProfileWidget(
                                title: "Wishlist",
                                icon: Icons.favorite,
                                onTap: () {}),
                          ],
                        ),
                      ),
                      Container(
                        padding:
                            EdgeInsets.only(right: 10, bottom: 15, left: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ProfileWidget(
                                title: "Memories",
                                icon: Icons.history,
                                onTap: () {}),
                            SizedBox(),
                            ProfileWidget(
                                title: "Trends",
                                icon: Icons.deck,
                                onTap: () {}),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(
                            right: 10, bottom: 15, left: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ProfileWidget(
                                title: "Saved",
                                icon: Icons.bookmark,
                                onTap: () {}),
                            const SizedBox(),
                            ProfileWidget(
                                title: "Add Card",
                                icon: Icons.credit_card,
                                onTap: () {}),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ListTile(
                        leading: const Icon(Icons.help),
                        title: const Text("Help & Support"),
                        trailing: const Icon(Icons.arrow_forward_ios),
                        onTap: () {},
                        tileColor: Colors.white,
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      ListTile(
                        leading: Icon(Icons.settings),
                        title: Text("Settings"),
                        trailing: Icon(Icons.arrow_forward_ios),
                        onTap: () {},
                        tileColor: Colors.white,
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                              height: 50,
                              width: 50,
                              child: Center(
                                child: Lottie.network('https://assets3.lottiefiles.com/packages/lf20_obgheauh.json', repeat: true, animate: true),
                              ),),
                          const SizedBox(width: 15),
                          Text("Under Construction", style: Theme.of(context).textTheme.headline4),
                        ],
                      ),
                      ListTile(
                        title: const Align(
                            alignment: Alignment.center,
                            child: Text("Log out")),
                        onTap: () {},
                        tileColor: Colors.white,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                )
              ],
            )),
          ),
        ),
      ),
    );
  }
}

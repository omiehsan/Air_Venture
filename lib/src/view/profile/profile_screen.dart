import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hawai_jubu/src/services/ticket/boughtticketdetails.dart';
import 'package:hawai_jubu/src/services/ticket/ticket_view.dart';
import 'package:hawai_jubu/src/view/_screen/contact_us/contact_us.dart';
import 'package:hawai_jubu/src/view/flights/destination_list.dart';
import 'package:hawai_jubu/src/view/profile/profile_widget.dart';
import 'package:hawai_jubu/src/view/profile/update_profile.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import '../../repository/auth_repo/auth_repo.dart';
import '../../services/ticket/currentuserwidget.dart';
import '../../view/navigations/navigation_bar/bottom_bar.dart';
import '../_screen/more_views/app_settings.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var isDark = MediaQuery.of(context).platformBrightness == Brightness.dark;
    String loggedInUserEmail = "user@example.com";

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
          icon: const Icon(Icons.arrow_back_rounded),
        ),
        title: Text("Profile",style: GoogleFonts.poppins(
            fontWeight: FontWeight.bold, fontSize: 17)),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(isDark ? LineAwesomeIcons.sun : FontAwesomeIcons.moon),
            splashRadius: 1,
          )
        ],
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Cover Section of profile includes (profile image,name,edit profile)

            Material(
              elevation: 5,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                height: MediaQuery.of(context).size.height * 0.25,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/airbg.jpg'),
                    fit: BoxFit.fill,
                    colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.4), BlendMode.dstATop),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Stack(
                          children: [
                            SizedBox(
                              width: 90,
                              height: 90,
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 3, color: Colors.orange),
                                  borderRadius: BorderRadius.circular(16),
                                  shape: BoxShape.rectangle,
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(14),
                                  child: const Image(
                                    image: NetworkImage(
                                        "https://source.unsplash.com/random/200x200/?face"),
                                    height: 100,
                                    width: 100,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: -2,
                              right: -1,
                              child: Container(
                                width: 25,
                                height: 25,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: Colors.orange,
                                ),
                                child: const Icon(
                                  CupertinoIcons.camera_circle_fill,
                                  size: 20.0,
                                  color: Colors.black,
                                ),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        CurrentUserWidget(),
                        // Text(
                        //   " Tashrif Jubaer",
                        //   style: GoogleFonts.montserrat(
                        //     fontWeight: FontWeight.w700,
                        //     fontSize: 16,
                        //   ),
                        // ),
                      ],
                    ),
                    FloatingActionButton(
                      onPressed: () => Get.to(() => const UpdateProfile()),
                      backgroundColor: Colors.orange,
                      mini: true,
                      child: const Icon(Icons.manage_accounts_rounded),
                    ),
                  ],
                ),
              ),
            ),

            // Bottom Part by Tashrif_jubaer

            Container(
              padding: const EdgeInsets.only(top: 25),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.only(right: 10, bottom: 15, left: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ProfileWidget(
                            title: "Address",
                            icon: Icons.location_on_sharp,
                            onTap: () {}),
                        SizedBox(),
                        ProfileWidget(
                          title: "My Trips",
                          icon: Icons.travel_explore,
                          onTap:  () => Get.to(() => DestinationListPage()),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(right: 10, bottom: 15, left: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ProfileWidget(
                          title: "Tickets",
                          icon: Icons.airplane_ticket_sharp,
                          onTap: () => Get.to(() => BoughtTicketDetails()),
                        ),
                        SizedBox(),
                        ProfileWidget(
                            title: "Wishlist",
                            icon: Icons.favorite,
                            onTap: () {}),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(right: 10, bottom: 15, left: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ProfileWidget(
                            title: "Memories",
                            icon: Icons.history,
                          onTap: () => Get.to(() => TicketView()),
                        ),
                        SizedBox(),
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
                      onTap: ()=> Get.to(()=>const ContactUs()),
                    tileColor: Colors.white,
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  ListTile(
                    leading: Icon(Icons.settings),
                    title: Text("Settings"),
                    trailing: Icon(Icons.arrow_forward_ios),
                      onTap: ()=> Get.to(()=>const AppSettings()),
                    tileColor: Colors.white,
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  ListTile(
                    title: const Align(
                        alignment: Alignment.center, child: Text("Log out")),
                    onTap: () {
                      AuthRepo.instance.logOut();
                    },
                    tileColor: Colors.white,
                  ),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

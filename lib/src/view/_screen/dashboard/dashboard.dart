import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hawai_jubu/src/services/category_all/category_seeall.dart';
import 'package:hawai_jubu/src/services/ticket/ticket_view.dart';
import 'package:hawai_jubu/src/utils/constaints/images.dart';
import 'package:hawai_jubu/src/utils/constaints/texts.dart';
import '../../../services/best_deals/category_widgets.dart';
import '../../../services/recommended/recommended_widget.dart';
import '../../navigations/navigation_bar/mid_bar.dart';
import '../../navigations/navigation_bar/notifications.dart';
import '../../navigations/search_bar/search_boxs.dart';
import '../../profile/profile_screen.dart';
import '../tileview.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown.shade100,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        //   leading: Image.asset(
        //     jSplashIcon,
        //     // width: MediaQuery.of(context).size.width * 0.5,
        //     // height: MediaQuery.of(context).size.height * 0.5,alignment:Alignment.center ,
        // ),
        title: Align(
          alignment: Alignment.centerLeft,
          child: Image.asset(
            jSplashLogo,
            width: MediaQuery.of(context).size.width * 0.70,
            // height: MediaQuery.of(context).size.height *0.40,
          ),
        ),

        actions: [
          IconButton(
            icon: const Icon(
              Icons.notifications_none_outlined,
              size: 25,
            ),
            splashRadius: 25,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => NotificationScreen(),
                ),
              );
            },
          ),
          IconButton(
            icon: const Icon(
              Icons.account_circle,
              size: 25,
            ),
            splashRadius: 25,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProfileScreen(),
                ),
              );
            },
          ),
        ],
        elevation: 3,
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
            const SearchBoxs(),
            const MidBar(),
            Padding(
              padding:
                  const EdgeInsets.only(top: 15.0, left: 10.0, right: 10.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      jDashPopular,
                      style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    TextButton(
                      child: Text(jDashSeeall,
                          style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.normal,
                            fontSize: 17,
                            decoration: TextDecoration.underline,
                            color: Colors.deepOrange,
                          )),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),
            DashCategoryWidget(textTheme: Typography.blackCupertino),
            Padding(
              padding:
                  const EdgeInsets.only(top: 15.0, left: 10.0, right: 10.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      jDashPopular,
                      style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    TextButton(
                      child: Text(jDashSeeall,
                          style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.normal,
                            fontSize: 17,
                            decoration: TextDecoration.underline,
                            color: Colors.deepOrange,
                          )),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),
            DashCategoryWidget(textTheme: Typography.blackCupertino),
            Padding(
              padding:
                  const EdgeInsets.only(top: 15.0, left: 10.0, right: 10.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      jDashPopular,
                      style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    TextButton(
                      child: Text(jDashSeeall,
                          style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.normal,
                            fontSize: 17,
                            decoration: TextDecoration.underline,
                            color: Colors.deepOrange,
                          )),
                      onPressed: () => Get.to(() => DashCategoryWidgetSeeAll(
                          textTheme: Typography.blackCupertino)),
                    ),
                  ],
                ),
              ),
            ),
            DashCategoryWidget(textTheme: Typography.blackCupertino),
            Padding(
              padding:
                  const EdgeInsets.only(top: 15.0, left: 10.0, right: 10.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      jDashPopular,
                      style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    TextButton(
                      child: Text(jDashSeeall,
                          style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.normal,
                            fontSize: 17,
                            decoration: TextDecoration.underline,
                            color: Colors.deepOrange,
                          )),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),
            DashCategoryWidget(textTheme: Typography.blackCupertino),
            Padding(
              padding:
                  const EdgeInsets.only(top: 15.0, left: 10.0, right: 10.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      jDashPopular,
                      style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    TextButton(
                      child: Text(jDashSeeall,
                          style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.normal,
                            fontSize: 17,
                            decoration: TextDecoration.underline,
                            color: Colors.deepOrange,
                          )),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),
            DashCategoryWidget(textTheme: Typography.blackCupertino),
            TicketView(),
            const RecommendedFlightsWidgets()
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hawai_jubu/src/services/category_all/category_seeall.dart';
import 'package:hawai_jubu/src/utils/constaints/images.dart';
import 'package:hawai_jubu/src/utils/constaints/texts.dart';
import 'package:hawai_jubu/src/view/_screen/hotel/hotel_repo.dart';
import 'package:lottie/lottie.dart';
import '../../../services/best_deals/category_widgets.dart';
import '../../../services/recommended/recommended_widget.dart';
import '../../navigations/navigation_bar/mid_bar.dart';
import '../../navigations/navigation_bar/notifications.dart';
import '../../navigations/search_bar/search_boxs.dart';
import '../../profile/profile_screen.dart';
import '../new/airlines.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown.shade50,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Image.asset(
          jSplashLogo,
          width: MediaQuery.of(context).size.width * 0.50,
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.notifications_none_outlined,
              size: 30,
            ),
            splashRadius: 25,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const NotificationScreen(),
                ),
              );
            },
          ),
          Container(
            margin: const EdgeInsets.only(right: 8),
            child: IconButton(
              icon: Lottie.network(
                'https://lottie.host/24de3145-2caf-4d01-be01-06c0cdcc4549/CKNcF5YXBg.json',
                width: 27,
                height: 27,
              ),
              splashRadius: 25,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ProfileScreen(),
                  ),
                );
              },
            ),
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
            SearchBoxs(),
            const MidBar(),
            Padding(
              padding:
                  const EdgeInsets.only(top: 20.0, left: 10.0, right: 10.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Why Book With airVenture?",
                  style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w600, fontSize: 18),
                ),
              ),
            ),
            const MyCarousel(),
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
                          fontWeight: FontWeight.w600, fontSize: 18),
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
                      jHotelsForYou,
                      style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w600, fontSize: 18),
                    ),
                    TextButton(
                      child: Text(
                        jDashSeeall,
                        style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.normal,
                          fontSize: 17,
                          decoration: TextDecoration.underline,
                          color: Colors.deepOrange,
                        ),
                      ),
                      onPressed: () => Get.to(() => HotelSeeAll(
                  textTheme: Typography.blackCupertino)),
                    ),
                  ],
                ),
              ),
            ),
            const RecommendedFlightsWidgets(),
          ],
        ),
      ),
    );
  }
}

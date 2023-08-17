import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:hawai_jubu/src/services/airport_cab/airport_cab_list.dart';
import 'package:hawai_jubu/src/view/flights/status_tab.dart';
import 'package:hawai_jubu/src/view/navigations/navigation_bar/widgets/mid_bar_widget.dart';

import '../../../services/ticket/currentuserview.dart';
import '../../_screen/package/package.dart';


class MidBar extends StatelessWidget {
  const MidBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 74,
      child: Container(
        color: Colors.white70,
        padding: EdgeInsets.all(2),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MidBarWidget(
                iconData: Icons.flight,
                text: "Flight Status",
                onTap: () => Get.to(() => FlightStatus()),
              ),
              VerticalDivider(thickness: 1),
              MidBarWidget(
                iconData: Icons.time_to_leave,
                text: "Airport Cab",
                onTap: () => Get.to(() => AirportListPage()),
              ),
              // VerticalDivider(thickness: 1),
              // MidBarWidget(
              //     iconData: Icons.airplane_ticket_outlined,
              //     text: "Travel Insurance",
              //     onTap: () {}),
              VerticalDivider(thickness: 1),
              MidBarWidget(
                iconData: FontAwesomeIcons.book,
                text: "Packages",
                onTap: ()  => Get.to(() => const Package()),
              ),
              VerticalDivider(thickness: 1),
              MidBarWidget(
                iconData: Icons.groups,
                text: "Group Booking",
                onTap: ()  => Get.to(() => CurrentUserView()),
              ),
              VerticalDivider(thickness: 1),
              MidBarWidget(
                iconData: Icons.bar_chart,
                text: "Fare Alerts",
                onTap: ()  {},
              ),
              VerticalDivider(thickness: 1),
              MidBarWidget(
                iconData: FontAwesomeIcons.accusoft,
                text: "Apply for visa",
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

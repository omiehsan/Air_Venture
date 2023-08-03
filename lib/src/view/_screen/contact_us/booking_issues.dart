import 'package:flutter/material.dart';
import '../../../utils/constaints/styles_colors.dart';
import '../../navigations/navigation_bar/top_bar.dart';
import 'package:get/get.dart';


class IssuesBooking extends StatelessWidget {
  const IssuesBooking({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: TopBar(
        title: 'Issues with Booking',
        icon: Icons.account_circle,
        onTap: () => Get.back(),
      ),
      body: Center(
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.7,
          width: MediaQuery.of(context).size.width * 0.6,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children:  [
              const Center(
                child: Image(
                  image: AssetImage(
                    'assets/images/trip_issues.png',
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text("Seems you don't have any bookings", style: Styles.headLineStyle10,)
            ],
          ),
        ),
      ),
    );
  }
}

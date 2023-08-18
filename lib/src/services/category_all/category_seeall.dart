import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hawai_jubu/src/services/ticket/trip_screen.dart';
import 'package:hawai_jubu/src/view/navigations/navigation_bar/top_bar.dart';
import '../best_deals/dash_category_widget.dart';

class DashCategoryWidgetSeeAll extends StatelessWidget {
  final String imageUrl =
      'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwallpapercrafter.com%2F134786-town-night-view-dubai-united-arab-emirates-cityscape.html&psig=AOvVaw2Y-C2DMxT0bgwlPNo1Yf1Z&ust=1691955191262000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCLiWzbHu14ADFQAAAAAdAAAAABAE';

  DashCategoryWidgetSeeAll({
    Key? key,
    required this.textTheme,
  }) : super(key: key);

  final TextTheme textTheme;
  final catItems = DashCategoriesModel.catItems;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopBar(
        title: 'Fare for you',
        icon: Icons.arrow_back_rounded,
        onTap: Get.back,
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          itemCount: catItems.length,
          itemBuilder: (context, index) => GestureDetector(
            onTap: () {
              // final catName = catItems[index].catName;
              // print(catName);
              // Get.to(const Trip());
            },
            child: Card(
              elevation: 5,
              clipBehavior: Clip.antiAlias,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 200,
                        width: double.infinity,
                        child: Image.asset(
                          catItems[index].catImage,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        left: -2,
                        child: Container(
                          width: MediaQuery.of(context).size.width*1,
                          height: 28,
                          color: Colors.blueGrey.withOpacity(0.4),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  catItems[index].catName,
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("${catItems[index].catJobs}",style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500, fontSize: 16,color: Colors.black87)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("\$${catItems[index].catPrice}",style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold, fontSize: 16,color: Colors.green)),
                            const Icon(Icons.arrow_forward_ios,color: Colors.green,size: 15,)
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

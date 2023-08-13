import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hawai_jubu/src/services/ticket/trip_screen.dart';
import 'package:hawai_jubu/src/view/navigations/navigation_bar/top_bar.dart';
import '../best_deals/dash_category_widget.dart';

class DashCategoryWidgetSeeAll extends StatelessWidget {
  final String  imageUrl = 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwallpapercrafter.com%2F134786-town-night-view-dubai-united-arab-emirates-cityscape.html&psig=AOvVaw2Y-C2DMxT0bgwlPNo1Yf1Z&ust=1691955191262000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCLiWzbHu14ADFQAAAAAdAAAAABAE';

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
        title: 'Popular Flights',
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
              final catName = catItems[index].catName;
              print(catName);
              Get.to(const Trip());
            },
            child: Card(
              elevation: 5,
              clipBehavior: Clip.antiAlias,
              child: Container(
                height: 200.0,
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        height: 160,
                        width: double.infinity,
                         child: Image.asset(catItems[index].catImage)),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(catItems[index].catName),
                          Text("${catItems[index].catExperts}"),
                          Text("${catItems[index].catJobs}"),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

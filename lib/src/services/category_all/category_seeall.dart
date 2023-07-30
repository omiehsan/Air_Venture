import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hawai_jubu/src/services/ticket/trip_screen.dart';
import 'package:hawai_jubu/src/view/_screen/tileview.dart';
import 'package:hawai_jubu/src/view/navigations/navigation_bar/top_bar.dart';
import '../best_deals/dash_category_widget.dart';


class DashCategoryWidgetSeeAll extends StatelessWidget {
  DashCategoryWidgetSeeAll({
    Key? key,
    required this.textTheme,
  }) : super(key: key);

  final TextTheme textTheme;
  final catItems = DashCategoriesModel.catItems;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopBar(title: 'Popular Flights', icon: Icons.arrow_back_rounded, onTap: Get.back,),
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
            child: Container(
              padding:
              const EdgeInsets.only(left: 5, top: 5, bottom: 5, right: 5),
              child: Card(
                elevation: 6,
                clipBehavior: Clip.antiAlias,
                child: Container(
                  height: 160.0,
                  width: 180.0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 90,
                        width: MediaQuery.of(context).size.width * 1,
                        child: Tileview(),
                      ),
                      SizedBox(
                        height: 70,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(Icons.circle,
                                    color: Colors.green, size: 8.0),
                                const SizedBox(width: 3.0),
                                Text("${catItems[index].catExperts}",
                                    style:
                                    TextStyle(fontWeight: FontWeight.bold)),
                                const SizedBox(width: 3.0),
                                Text("x"),
                              ],
                            ),
                            Divider(height: 1),
                            SizedBox(
                              height: 40,
                              width: 130,
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(catItems[index].catName,
                                    textAlign: TextAlign.center,
                                    style: textTheme.headline6
                                        ?.apply(color: Colors.black),
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis),
                              ),
                            ),
                            Divider(height: 1),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.check,
                                    color: Colors.black, size: 15.0),
                                SizedBox(width: 3.0),
                                Text("${catItems[index].catJobs}",
                                    style:
                                    TextStyle(fontWeight: FontWeight.bold)),
                                SizedBox(width: 3.0),
                                Text("s"),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

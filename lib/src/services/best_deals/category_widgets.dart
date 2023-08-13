import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hawai_jubu/src/services/recommended/recommend.dart';
import 'package:hawai_jubu/src/services/ticket/trip_screen.dart';
import 'dash_category_widget.dart';

class DashCategoryWidget extends StatelessWidget {
  DashCategoryWidget({
    Key? key,
    required this.textTheme,
  }) : super(key: key);

  final TextTheme textTheme;
  final catItems = DashCategoriesModel.catItems;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 220,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: catItems.length,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            final catName = catItems[index].catName;
            print(catName);
            Get.to(const Trip());
          },
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            elevation: 6,
            clipBehavior: Clip.antiAlias,
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.6,
              width: MediaQuery.of(context).size.width * 0.5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 120,
                    width: double.infinity,
                    child: Image.asset(catItems[index].catImage),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("${catItems[index].catExperts}",
                            style:
                                const TextStyle(fontWeight: FontWeight.bold)),
                        SizedBox(
                          height: 4,
                        ),
                        Text(catItems[index].catName,
                            textAlign: TextAlign.center,
                            style:
                                textTheme.headline6?.apply(color: Colors.black),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis),
                        SizedBox(
                          height: 4,
                        ),
                        Text("${catItems[index].catJobs}",
                            style:
                                const TextStyle(fontWeight: FontWeight.bold)),
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

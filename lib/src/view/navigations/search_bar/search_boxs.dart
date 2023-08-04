import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controller/authentication/controllers/search_controller.dart';
import 'package:hawai_jubu/src/view/_screen/flight/flight_result.dart';

class SearchBoxs extends StatelessWidget {
  final SearchBoxController controller = Get.put(SearchBoxController());

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.brown.shade100,
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      child: ListView(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          ListTile(
            title: SizedBox(
              height: MediaQuery.of(context).size.height * 0.06,
              child: TextFormField(
                onChanged: (value) => controller.setFromDestination(value),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide.none,
                  ),
                  fillColor: Colors.black26,
                  filled: true,
                  prefixIcon: const Icon(
                    Icons.location_on,
                    color: Colors.white70,
                  ),
                  hintText: 'From',
                  hintStyle: const TextStyle(
                    color: Colors.white,
                  ),
                  contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                ),
              ),
            ),
          ),
          ListTile(
            title: SizedBox(
              height: MediaQuery.of(context).size.height * 0.06,
              child: TextFormField(
                onChanged: (value) => controller.setToDestination(value),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide.none,
                  ),
                  fillColor: Colors.black26,
                  filled: true,
                  prefixIcon: const Icon(
                    Icons.flight_takeoff,
                    color: Colors.white70,
                  ),
                  hintText: 'To',
                  hintStyle: TextStyle(
                    color: Colors.white,
                  ),
                  contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                ),
              ),
            ),
          ),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: 44.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: const LinearGradient(
                  colors: [Color(0xFFff9133), Color(0xFFe16c06)],
                ),
              ),
              child: ElevatedButton(
                onPressed: () async {
                  await controller.onSearchPressed();
                  // Once the search is completed, navigate to the Flight_Result page.
                  if (controller.searchResults.isNotEmpty) {
                    Get.to(() => Flight_Result(searchResults: controller.searchResults));
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text('Search'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

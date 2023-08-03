import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hawai_jubu/src/services/recommended/recommended_models.dart';
import 'package:hawai_jubu/src/view/_screen/forget_password/forgetpassword_text.dart';

class RecommendedFlightsWidgets extends StatefulWidget {
  const RecommendedFlightsWidgets({Key? key}) : super(key: key);

  @override
  State<RecommendedFlightsWidgets> createState() =>
      _RecommendedFlightsWidgetsState();
}

class _RecommendedFlightsWidgetsState extends State<RecommendedFlightsWidgets> {
  bool isReacted = false;

  void toggleReaction() {
    setState(() {
      isReacted = !isReacted;
    });
  }

  @override
  Widget build(BuildContext context) {
    final recoItem = DashRecommendedModels.recoItem;
    return SizedBox(
      width: double.infinity,
      height: 120,
      child: ListView.builder(
        itemCount: recoItem.length,
        // shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => GestureDetector(
<<<<<<< HEAD
          onTap: (){},
          child: Container(
=======
          onTap: (){
      Get.to(ForgetPasswordTextScreen());},
            child: Container(
>>>>>>> 8ce4fc4682d51d8957361bdd418c90fc69d0101d
            margin: const EdgeInsets.all(5),
            child: Card(
              elevation: 5,
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(5),
                    child: InkWell(
                      // onTap: () {},
                      child: Container(
                        height: MediaQuery.of(context).size.height*0.9,
                        width: MediaQuery.of(context).size.width*0.25,

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(recoItem[index].recoImage),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                const Icon(
                                  Icons.house_rounded,
                                  size: 20,
                                  color: Colors.orange,
                                ),
                                Text(
                                  recoItem[index].recoType,
                                  style: GoogleFonts.poppins(),
                                ),
                              ],
                            ),
                            Text(
                              " \$400",
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              recoItem[index].recoName,
                              style: GoogleFonts.poppins(),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.location_on,
                                  size: 20,
                                  color: Colors.green.shade500,
                                ),
                                Text(
                                  recoItem[index].recoLocation,
                                  style: GoogleFonts.poppins(),
                                ),
                              ],
                            ),

                          ],
                        ),
                        SizedBox(
                          width: 24,
                          height: 24,
                          child: FloatingActionButton(
                            onPressed: toggleReaction,
                            mini: true,
                            backgroundColor: Colors.white70,
                            child: Icon(
                              isReacted ? Icons.favorite : Icons.favorite_border,
                              color: Colors.orange,
                              size: 21,
                            ),
                          ),
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
    );
  }
}

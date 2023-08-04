import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hawai_jubu/src/services/recommended/recommend.dart';
import 'package:hawai_jubu/src/services/recommended/recommended_models.dart';

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
          onTap: () {
            showModalBottomSheet(
              context: context,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              
              builder: (context) => Container(
                // height: MediaQuery.of(context.size.height*0.7),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                      child: Image.asset(
                        jLeMeridianView,
                        fit: BoxFit.cover,
                        height: MediaQuery.of(context).size.height * 0.22,
                        width: double.infinity,
                      ),
                    ),
                    //about places
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        "About",
                        style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 12.0,left: 10,right: 10,bottom: 8),
                      child: Text(
                        "Aboutfgdtjgfhdsfstystrsyyjrtyrrgfdgtgdffy",
                        maxLines: 3,
                        style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.normal, fontSize: 14),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 5),
                      child: Text(
                        "Photos",
                        style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius:  BorderRadius.circular(10),
                            child: Image.asset(
                              jLeMeridianView,
                              fit: BoxFit.fill,
                              height: 55,
                              width: 55,
                            ),
                          ),
                          SizedBox(width: 20,),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              jLeMeridianView,
                              fit: BoxFit.fill,
                              height: 55,
                              width: 55,
                            ),
                          ),
                          SizedBox(width: 20,),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              jLeMeridianView,
                              fit: BoxFit.fill,
                              height: 55,
                              width: 55,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 5),
                      child: Text(
                        "Attraction",
                        style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ),
                    Row(
                      children: [
                        Container (
                          padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 5.0),
                          child:  Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(FontAwesomeIcons.hashtag),
                              SizedBox(width: 5,),
                              Text("gfshxjsfx"),
                              SizedBox(width: 10,),
                              Icon(FontAwesomeIcons.hashtag),
                              SizedBox(width: 5,),
                              Text("gfshxjsfx"),
                            ],
                          ),

                        ),
                      ],
                    )
                  ],
                ),
              ),
            );
            // Get.to(ForgetPasswordTextScreen());
          },
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
                      height: MediaQuery.of(context).size.height * 0.9,
                      width: MediaQuery.of(context).size.width * 0.25,
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
    );
  }
}

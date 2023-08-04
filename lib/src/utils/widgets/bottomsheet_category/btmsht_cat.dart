  import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../services/recommended/recommend.dart';

class CategorySheet{
    static Future<dynamic> buildShowModalBottomSheet(BuildContext context) {
      return showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
        ),
        builder: (context) => Container(
          padding: EdgeInsets.only(bottom: 15),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
                child: Image.asset(
                  jLeMeridianView,
                  fit: BoxFit.cover,
                  height: MediaQuery.of(context).size.height * 0.25,
                  width: double.infinity,
                ),
              ),
              //about places
              Padding(
                padding: const EdgeInsets.only(top: 15,bottom: 5,left: 10,right: 10),
                child: Text(
                  "About",
                  style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.bold, fontSize: 17),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10,right: 10),
                child: Text(
                  "Aboutfgdtjgfhdsfstystrsyyjrtyrrgfdgtgdffy",
                  maxLines: 3,
                  style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.normal, fontSize: 14),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10,right: 10,top: 10,bottom: 5),
                child: Text(
                  "Photos",
                  style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.bold, fontSize: 17),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10,right: 10,bottom: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        jLeMeridianView,
                        fit: BoxFit.fill,
                        height: 55,
                        width: 55,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        jLeMeridianView,
                        fit: BoxFit.fill,
                        height: 55,
                        width: 55,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
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
                padding: const EdgeInsets.only(left: 10,right: 10,),
                child: Text(
                  "Attraction",
                  style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.bold, fontSize: 17),
                ),
              ),
              Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width*0.5,
                    padding: EdgeInsets.symmetric(
                        horizontal: 10.0, vertical: 5.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(FontAwesomeIcons.solidCircleCheck,color: Colors.orange,),
                            SizedBox(
                              width: 10,
                            ),
                            Text("gfshxjsfx"),
                          ],
                        ),
                        SizedBox(
                          height:5,
                        ),
                        Row(
                          children: [
                            Icon(FontAwesomeIcons.solidCircleCheck,color: Colors.orange,),
                            SizedBox(
                              width: 10,
                            ),
                            Text("gfshxjsfx"),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width*0.5,
                    padding: EdgeInsets.only(left: 10,right: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(FontAwesomeIcons.solidCircleCheck,color: Colors.orange,),
                            SizedBox(
                              width: 10,
                            ),
                            Text("gfshxjsfx"),
                          ],
                        ),
                        SizedBox(
                          height:5,
                        ),
                        Row(
                          children: [
                            Icon(FontAwesomeIcons.solidCircleCheck,color: Colors.orange,),
                            SizedBox(
                              width: 10,
                            ),
                            Text("gfshxjsfx"),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      );
    }
  }
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import '../../../services/games/game.dart';
import '../../../utils/constaints/dot_indicator.dart';
import '../../../utils/constaints/primary.dart';
import '../../../utils/constaints/scrhi.dart';

class Poster extends StatefulWidget {
  const Poster({Key? key}) : super(key: key);

  @override
  State<Poster> createState() => _PosterState();
}

class _PosterState extends State<Poster> {
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 190,
          width: double.infinity,
          child: PageView.builder(
            onPageChanged: (value) {
              setState(() {
                currentPage = value;
              });
            },
            scrollDirection: Axis.horizontal,
            itemCount: shoes.length,
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.only(bottom: 5),
                height: 200,
                decoration: BoxDecoration(
                  color: kPrimaryColor,
                  image: DecorationImage(
                    image: CachedNetworkImageProvider(
                      shoes[index],
                    ),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.3),
                      BlendMode.darken,
                    ),
                  ),
                ),
                child: Row(
                  children: [
                    Container(
                      width: getProportionateScreenWidth(270),
                      margin: EdgeInsets.only(
                        left: getProportionateScreenWidth(5),
                        top: getProportionateScreenHeight(15),
                        bottom: getProportionateScreenHeight(15),
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: getProportionateScreenWidth(20),
                        vertical: getProportionateScreenWidth(15),
                      ),
                      decoration: const BoxDecoration(
                        color: Colors.transparent,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          SizedBox(height: getProportionateScreenHeight(7)),
                          Text(
                            "Summer".toUpperCase(),
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                  height: 1.5,
                                  fontSize: getProportionateScreenWidth(24),
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                          ),
                          Text(
                            "Sale".toUpperCase(),
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                  height: 1,
                                  fontSize: getProportionateScreenWidth(24),
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                          ),
                          SizedBox(height: getProportionateScreenHeight(6)),
                          Text(
                            "up to 20% off".toUpperCase(),
                            style: TextStyle(
                              fontSize: getProportionateScreenHeight(10),
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
        SizedBox(height: getProportionateScreenHeight(10)),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            shoes.length,
            (index) => HorizontalDotIndicator(
              currentPage: currentPage,
              index: index,
            ),
          ),
        ),
      ],
    );
  }
}

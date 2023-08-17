import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'offer_model.dart';

class FirstPackView extends StatelessWidget {
  FirstPackView({
    Key? key,
    required this.textTheme,
  }) : super(key: key);

  final TextTheme textTheme;
  final FirstPackItems = FirstPackModel.FirstPackItems;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 220,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: FirstPackItems.length,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            // final FirstPackName = catItems[index].FirstPackName;
            // print(FirstPackName);
            // Get.to(const Trip());
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
                    child: Image.asset(
                      FirstPackItems[index].FirstPackImage,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(FirstPackItems[index].FirstPackName,
                            textAlign: TextAlign.center,
                            style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.w600, fontSize: 16),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis),
                        Text("\$${FirstPackItems[index].FirstPackPrice}",
                            style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Colors.green)),
                        Text("${FirstPackItems[index].FirstPackJobs}",
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

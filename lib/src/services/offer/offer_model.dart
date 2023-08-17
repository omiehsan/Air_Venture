import 'dart:math';
import '../best_deals/categories.dart';



class FirstPackModel {
  final String FirstPackName;
  final String FirstPackImage;
  int? FirstPackPrice;
  String? FirstPackJobs;
  // final VoidCallback? onTap;

  FirstPackModel(this.FirstPackName, this.FirstPackImage, {this.FirstPackPrice, this.FirstPackJobs}) {
    if (this.FirstPackPrice == null) {
      this.FirstPackPrice = new Random().nextInt(650);
    } else {
      this.FirstPackPrice = this.FirstPackPrice;
    }

    // if (this.catJobs == null) {
    //   this.catJobs = new Random().nextInt(89);
    // } else {
    //   this.catJobs = this.catJobs;
    // }
  }

  static List<FirstPackModel> FirstPackItems = [
    FirstPackModel(jCoxsBazar, jCoxsBazarImage, FirstPackPrice: 200, FirstPackJobs: "Sun,20 Aug" ),
    FirstPackModel(jBandarban, jBandarbanImage,FirstPackJobs: "Mon,21 Aug",FirstPackPrice: 250,),

  ];
}

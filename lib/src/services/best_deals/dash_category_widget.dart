import 'dart:math';
import 'categories.dart';


class DashCategoriesModel {
  final String catName;
  final String catImage;
  int? catExperts;
  String? catJobs;
  // final VoidCallback? onTap;

  DashCategoriesModel(this.catName, this.catImage, {this.catExperts, this.catJobs}) {
    if (this.catExperts == null) {
      this.catExperts = new Random().nextInt(650);
    } else {
      this.catExperts = this.catExperts;
    }

    // if (this.catJobs == null) {
    //   this.catJobs = new Random().nextInt(89);
    // } else {
    //   this.catJobs = this.catJobs;
    // }
  }

  static List<DashCategoriesModel> catItems = [
    DashCategoriesModel(jCoxsBazar, jCoxsBazarImage, catExperts: 200, catJobs: "Sun,20 Aug" ),
    DashCategoriesModel(jBandarban, jBandarbanImage,catJobs: "Mon,21 Aug",catExperts: 200,),
    DashCategoriesModel(jSylhet, jSylhetImage),
    DashCategoriesModel(jBangkok, jBangkokImage),
    DashCategoriesModel(jDubai, jDubaiImage),
    DashCategoriesModel(jDelhi, jDelhiImage),
    DashCategoriesModel(jMalaysiya, jMalaysiyaImage),
    DashCategoriesModel(jLadak, jLadakImage),
    DashCategoriesModel(jBali, jBaliImage),
    DashCategoriesModel(jMumbai, jMumbaiImage),

  ];
}

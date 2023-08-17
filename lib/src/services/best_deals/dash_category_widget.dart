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
    DashCategoriesModel(jSylhet, jSylhetImage,catJobs: "Sun,20 Aug"),
    DashCategoriesModel(jBangkok, jBangkokImage,catJobs: "Mon,28 Aug"),
    DashCategoriesModel(jDubai, jDubaiImage,catJobs: "Sun,27 Aug"),
    DashCategoriesModel(jDelhi, jDelhiImage,catJobs: "Tue,22 Aug"),
    DashCategoriesModel(jMalaysiya, jMalaysiyaImage,catJobs: "Mon,21 Aug"),
    DashCategoriesModel(jLadak, jLadakImage,catJobs: "Tue,29 Aug"),
    DashCategoriesModel(jBali, jBaliImage,catJobs: "Fri,25 Aug"),
    DashCategoriesModel(jMumbai, jMumbaiImage,catJobs: "Thu,24 Aug"),

  ];
}

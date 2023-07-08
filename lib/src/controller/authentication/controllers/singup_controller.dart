import 'package:flutter/material.dart';
import 'package:get/get.dart';
class SignupController extends GetxController{
  static SignupController get instance => Get.find();

  //Text filed controllers to get data from text-fields
  final email = TextEditingController();
  final password = TextEditingController();
  final fullName = TextEditingController();
  final phoneNo = TextEditingController();

//  call this Function from Design & it will do the rest
void registerUser(String email,String password){

}
}
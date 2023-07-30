import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hawai_jubu/src/controller/authentication/models/user_model.dart';
import 'package:hawai_jubu/src/repository/auth_repo/auth_repo.dart';
import 'package:hawai_jubu/src/repository/user_repo/user_repo.dart';
import '../../../view/_screen/forget_password/forget_pass_otp.dart';

class SignupController extends GetxController {
  static SignupController get instance => Get.find();

  //Text filed controllers to get data from text-fields

  final email = TextEditingController();
  final password = TextEditingController();
  final fullName = TextEditingController();
  final phoneNo = TextEditingController();
  final userRepo = Get.put(UserRepository());

//  call this Function from Design & it will do the rest

  void registerUser(String email, String password) {
    String? error = AuthenticationRepository.instance
        .createUserWithEmailAndPassword(email, password) as String?;
    if (error != null) {
      Get.showSnackbar(GetSnackBar(message: error.toString()));
    }
  }

  //Get Phone number from user & pass it to auto repo for firebase auth @Zu-tech

  Future<void> createUser(UserModel user) async {
    await userRepo.createUser(user);
    phoneAuthentication(user.phoneNo);
    Get.to(() => const OtpScreen());
  }

  void phoneAuthentication(String phoneNo) {
    AuthenticationRepository.instance.phoneAuthentication(phoneNo);
  }
}

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hawai_jubu/src/controller/authentication/models/user_model.dart';

class UserRepository extends GetxService {
  static UserRepository get instance => Get.find();

  final _db = FirebaseFirestore.instance;

//  Create User Function Here @ZuTech
//  Store User in FireStore
  createUser(UserModel user) async {
    await _db
        .collection("Users")
        .add(user.toJson())
        .whenComplete(
          () => Get.snackbar("Successful", "Account has been created.",
              snackPosition: SnackPosition.TOP,
              backgroundColor: Colors.black.withOpacity(0.2),
              colorText: Colors.white70),
        )
        .catchError((error, stackTrace) {
      Get.snackbar("Error", "Something went Wrong, try again!!",
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.black.withOpacity(0.2),
          colorText: Colors.white70);
      print(error.toString());
    });
  }

  // Fetch User Details
  Future<UserModel> getUserDetails(String email) async {
    final snapshot = await _db.collection("Users").where("Email", isEqualTo: email).get();
    final userData = snapshot.docs.map((e) => UserModel.fromSnapshot(e)).single;
    return userData;
  }

  // Store UserList
  Future<List<UserModel>> allUser() async {
    final snapshot = await _db.collection("Users").get();
    final userData = snapshot.docs.map((e) => UserModel.fromSnapshot(e)).toList();
    return userData;
  }
}

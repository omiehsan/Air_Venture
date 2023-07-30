import 'dart:core';
import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  final String? id;
  final String fullname;
  final String email;
  final String phoneNo;
  final String password;

  const UserModel({
    this.id,
    required this.email,
    required this.password,
    required this.phoneNo,
    required this.fullname,
  });

  toJson() {
    return {
      "Full Name": fullname,
      "E-mail": email,
      "Phone no.": phoneNo,
      "Password": password
    };
  }

  // Step 1 user fetched from Firebase to UserModel

  factory UserModel.fromSnapshot(
      DocumentSnapshot<Map<String, dynamic>> document) {
    final data = document.data()!;
    return UserModel(
        id: document.id,
        email: data["Email"],
        password: data["Password"],
        phoneNo: data["Phone no."],
        fullname: data["Full Name"]);
  }
}

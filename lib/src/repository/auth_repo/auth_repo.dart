import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hawai_jubu/src/repository/exceptions/signup_email_pass_failure.dart';
import 'package:hawai_jubu/src/view/_screen/dashboard/dashboard.dart';
import 'package:hawai_jubu/src/view/_screen/splash_screen/splash_screen.dart';
import 'package:hawai_jubu/src/view/navigations/navigation_bar/bottom_bar.dart';
import '../exceptions/login_email_pass_exceptions.dart';

class AuthenticationRepository extends GetxService {
  static AuthenticationRepository get instance => Get.find();

  // Variables
  final _auth = FirebaseAuth.instance;
  late final Rx<User?> firebaseUser;
  var verificationId = ''.obs;

  @override
  void onReady() {
    firebaseUser = Rx<User?>(_auth.currentUser);
    firebaseUser.bindStream(_auth.userChanges());
    ever(firebaseUser, _setInitialScreen);
  }

  _setInitialScreen(User? user) {
    user == null
        ? Get.offAll(() => const BottomBar())
        : Get.offAll(() => const BottomBar());
  }

  // Function

  Future<void> phoneAuthentication(String phoneNo) async {
    await _auth.verifyPhoneNumber(
      phoneNumber: phoneNo,
      verificationCompleted: (credential) async {
        await _auth.signInWithCredential(credential);
      },
      codeSent: (verificationId, resendToken) {
        this.verificationId.value = verificationId;
      },
      codeAutoRetrievalTimeout: (verificationId) {
        this.verificationId.value = verificationId;
      },
      verificationFailed: (e) {
        if (e.code == 'invalid-phone-number') {
          Get.snackbar('Error', 'The phone no. is not valid.');
        } else {
          Get.snackbar('Error', 'Something went wrong.');
        }
      },
    );
  }

  // Otp Function

  Future<bool> verifyOtp(String otp) async {
    var credentials = await _auth.signInWithCredential(
        PhoneAuthProvider.credential(
            verificationId: this.verificationId.value, smsCode: otp));
    return credentials.user != null ? true : false;
  }

// SignupWithEmailAndPass

  Future<void> createUserWithEmailAndPassword(
      String email, String password) async {
    try {
      await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      firebaseUser.value != null
          ? Get.offAll(() => const DashBoard())
          : Get.offAll(() => const DashBoard());
    } on FirebaseAuthException catch (e) {
      final ex = SignupWithEmailAndPassFailure.code(e.code);
      print('FIREBASE AUTH EXCEPTION - ${ex.message}');
      throw ex;
    } catch (_) {
      const ex = SignupWithEmailAndPassFailure();
      print('FIREBASE AUTH EXCEPTION - ${ex.message}');
      throw ex;
    }
  }

  // LoginWithEmailAndPass

  Future<void> loginEmailPass(String email, String password) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      firebaseUser.value != null
          ? Get.offAll(() => const BottomBar())
          : Get.offAll(() => SplashScreen());
    } on FirebaseAuthException catch (e) {
      final ex = loginUserEmailPassExceptions.code(e.code);
      Get.snackbar(
        "Firebase Auth Exception:",
        "${ex.errorMessage}",
        icon: Icon(Icons.person, color: Colors.white),
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.black87,
        borderRadius: 10,
        margin: EdgeInsets.all(15),
        colorText: Colors.white,
        duration: Duration(seconds: 10),
        isDismissible: true,
        dismissDirection: DismissDirection.horizontal,
        forwardAnimationCurve: Curves.easeOutBack,
      );
      throw ex;
    } catch (_) {
      const ex = loginUserEmailPassExceptions();
      Get.snackbar(
        "Exception:",
        "${ex.errorMessage}",
        icon: Icon(Icons.person, color: Colors.white),
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.black87,
        borderRadius: 10,
        margin: EdgeInsets.all(15),
        colorText: Colors.white,
        duration: Duration(seconds: 10),
        isDismissible: true,
        dismissDirection: DismissDirection.horizontal,
        forwardAnimationCurve: Curves.easeOutBack,
      );
      throw ex;
    }
  }

  Future<void> logOut() async => await _auth.signOut();
}

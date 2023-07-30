import 'package:get/get.dart';
import 'package:hawai_jubu/src/repository/auth_repo/auth_repo.dart';
import 'package:hawai_jubu/src/repository/user_repo/user_repo.dart';

class ProfileController extends GetxController {
  static ProfileController get instance => Get.find();
  final _authRepo = Get.put(AuthenticationRepository());
  final _userRepo = Get.put(UserRepository());


  // Get User email & pass to userRepo to fetch userData

  getUserData() {
    final email = _authRepo.firebaseUser.value?.email;
    print("email : $email");
    if (email != null) {
      print("email is not null : $email");
      return _userRepo.getUserDetails(email);
    } else{
      Get.snackbar("Error", "Login to continue");
    }
  }
}

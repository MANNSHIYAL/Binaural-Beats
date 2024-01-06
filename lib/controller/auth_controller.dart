import 'package:beats/constants.dart';
import 'package:beats/model/user.dart';
import 'package:beats/views/screens/home_screen.dart';
import 'package:beats/views/screens/login_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

// ignore: camel_case_types'
class AuthController extends GetxController {
  static AuthController instance = Get.find();
  late Rx<User?> _user;

  // ignore: unused_element
  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
    _user = Rx<User?>(firebaseAuth.currentUser);
    _user.bindStream(firebaseAuth.authStateChanges());
    ever(_user, _setInitialScreen);
  }

  _setInitialScreen(User? user) {
    if (user == null) {
      Get.offAll(() => LoginScreen());
    } else {
      printData(user);
      Get.offAll(() => const HomeScreen());
    }
  }

  void registerUser(String name, String email, String password) async {
    try {
      if (name.isNotEmpty && email.isNotEmpty && password.isNotEmpty) {
        UserCredential userCredential = await firebaseAuth
            .createUserWithEmailAndPassword(email: email, password: password);
        UserData user = UserData(
            name: name,
            email: email,
            password: password,
            uid: userCredential.user!.uid);
        _user.update((val) {
          firebaseAuth.currentUser!.updateDisplayName(name);
        });
        _user.refresh();
        await firestore
            .collection("users")
            .doc(userCredential.user!.uid)
            .set(user.toJson());
      } else {
        Get.snackbar("Error creating Account",
            "Please try again and make sure all the fields are filled");
      }
    } catch (e) {
      Get.snackbar("Error", "Please enter all the fields");
    }
  }

  void loginUser(String email, String password) async {
    try {
      if (email.isNotEmpty && password.isNotEmpty) {
        await firebaseAuth.signInWithEmailAndPassword(
            email: email, password: password);
        Get.snackbar("Success", "Login Successful");
      } else {
        Get.snackbar("Error", "Please enter all the fields");
      }
    } catch (e) {
      Get.snackbar("Error", "Invalid email or password");
    }
  }

  void logoutUser() async {
    await firebaseAuth.signOut();
    Get.offAll(() => LoginScreen());
  }

  String? printData(User user) {
    return user.displayName;
  }
}

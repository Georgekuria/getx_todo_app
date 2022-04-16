import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class AuthOperations extends GetxController {
  //
  FirebaseAuth _auth = FirebaseAuth.instance;
  //make firebase user observable
  Rxn<User> _firebaseUser = Rxn<User>();
  String? get user => _firebaseUser.value!.email;

  @override
  void onInit() {
    //it binds the authchange stream to the firebase user
    _firebaseUser.bindStream(_auth.authStateChanges());
    super.onInit();
  }

  signUp(String email, String password) async {
    try {
      await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
    } catch (e) {
      Get.snackbar("Error while creating account", e.toString(),
          snackPosition: SnackPosition.BOTTOM);
    }
  }

  signIn(String email, String password) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
    } catch (e) {
      Get.snackbar("Error while signing in", e.toString(),
          snackPosition: SnackPosition.BOTTOM);
    }
  }

  signOut() {
    try {
      _auth.signOut();
    } catch (e) {
      Get.snackbar("Error while signing out", e.toString(),
          snackPosition: SnackPosition.BOTTOM);
    }
  }
}

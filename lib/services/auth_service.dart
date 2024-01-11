import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:hahu_hoheng_fitfun/routes/route_name.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<void> singInWithEmailAndPassword(String email, String password) async {
    try {
      final credential = await _auth.signInWithEmailAndPassword(
          email: email, password: password);

      if (credential.user != null) {
        Get.toNamed(RouteName.home);
      } else {
        Get.snackbar("Login", "Wrong email or password provided for that user");
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        Get.snackbar("Login", "User not found");
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        Get.snackbar("Login", "Password is wrong");
        print('Wrong password provided for that user');
      }
    }
  }

  Future<User?> signUpWithEmailAndPassword(
      String email, String password) async {
    try {
      final credential = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return credential.user;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        Get.snackbar("Sign Up", "The password provided is too weak");
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        Get.snackbar("Sign Up", "he account already exists");
        print('The account already exists for that email.');
      }
    } catch (e) {
      Get.snackbar("Sign Up", "Failed");
      print(e);
    }
    return null;
  }

  Future<void> signOut() async {
    await _auth.signOut();
  }
}

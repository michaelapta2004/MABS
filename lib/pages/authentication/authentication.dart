import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:mabs/pages/generate_screen/generate_screen.dart';
import 'package:mabs/pages/serverpage_page/serverpage_page.dart';

import 'exceptions/register_email_password_failure.dart';
import 'exceptions/login_email_password_failure.dart';


class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();


  //Variables
  final _auth = FirebaseAuth.instance;
  late final Rx<User?> firebaseUser;


  //Will be load when app launches this func will be called and set the firebaseUser state
  @override
  void onReady() {
    firebaseUser = Rx<User?>(_auth.currentUser);
    firebaseUser.bindStream(_auth.userChanges());
    ever(firebaseUser, _setInitialScreen);
  }


  /// If we are setting initial screen from here
  /// then in the main.dart => App() add CircularProgressIndicator()
  _setInitialScreen(User? user) {
    user == null ? Get.offAll(() => const GenerateScreen()) : Get.offAll(() => ServerpagePage());
  }


  //FUNC
  Future<String?> createUserWithEmailAndPassword(String email, String password) async {
    try {
      await _auth.createUserWithEmailAndPassword(email: email, password: password);
      firebaseUser.value != null ? Get.offAll(() => ServerpagePage()) : Get.to(() => const GenerateScreen());
    } on FirebaseAuthException catch (e) {
      final ex = RegisterWithEmailAndPasswordFailure.code(e.code);
      return ex.message;
    } catch (_) {
      const ex = RegisterWithEmailAndPasswordFailure();
      return ex.message;
    }
    return null;
  }


  Future<String?> loginWithEmailAndPassword(String email, String password) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      final ex = LogInWithEmailAndPasswordFailure.code(e.code);
      return ex.message;
    } catch (_) {
      const ex = LogInWithEmailAndPasswordFailure();
      return ex.message;
    }
    return null;
  }


  Future<void> logout() async => await _auth.signOut();
}
import 'package:mabs/core/app_export.dart';
import 'package:mabs/presentation/login_screen/models/login_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the LoginScreen.
///
/// This class manages the state of the LoginScreen, including the
/// current loginModelObj
class LoginController extends GetxController {
  TextEditingController passwordController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  Rx<LoginModel> loginModelObj = LoginModel().obs;

  Rx<bool> isShowPassword = true.obs;

  @override
  void onClose() {
    super.onClose();
    passwordController.dispose();
    emailController.dispose();
  }
}

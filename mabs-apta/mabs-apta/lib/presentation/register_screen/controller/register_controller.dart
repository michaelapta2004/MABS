import 'package:mabs/core/app_export.dart';
import 'package:mabs/presentation/register_screen/models/register_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the RegisterScreen.
///
/// This class manages the state of the RegisterScreen, including the
/// current registerModelObj
class RegisterController extends GetxController {
  TextEditingController userNameController = TextEditingController();

  TextEditingController phoneNumberController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  Rx<RegisterModel> registerModelObj = RegisterModel().obs;

  Rx<bool> isShowPassword = true.obs;

  @override
  void onClose() {
    super.onClose();
    userNameController.dispose();
    phoneNumberController.dispose();
    emailController.dispose();
    passwordController.dispose();
  }
}

import 'package:mabs/core/app_export.dart';
import 'package:mabs/pages/forgotpassword_screen/models/forgotpassword_model.dart';
import 'package:flutter/material.dart';

class ForgotpasswordController extends GetxController {
  TextEditingController phoneNumberController = TextEditingController();

  Rx<ForgotpasswordModel> forgotpasswordModelObj = ForgotpasswordModel().obs;

  @override
  void onClose() {
    super.onClose();
    phoneNumberController.dispose();
  }
}

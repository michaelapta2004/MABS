import 'package:http/http.dart';
import 'package:mabs/core/app_export.dart';
import 'package:mabs/pages/register_screen/models/register_model.dart';
import 'package:flutter/material.dart';

class RegisterController extends GetxController {
  static RegisterController get instance => Get.find();

  TextEditingController userNameController = TextEditingController();

  TextEditingController phoneNumberController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  Rx<RegisterModel> registerModelObj = RegisterModel().obs;

  Rx<bool> isShowPassword = true.obs;

  String urlServer = "http://192.168.56.1:6969";

  @override
  void onClose() {
    super.onClose();
    userNameController.dispose();
    phoneNumberController.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  void registerUser(String email, String password, String username,
      String phone, context) async {
    Uri url = Uri.parse("$urlServer/api/register");

    try {
      var response = await post(
        url,
        headers: {
          'Accept': 'application/json',
        },
        body: {
          "username": username,
          "password": password,
          "email": email,
          "phone": phone,
        },
      );

      if (response.statusCode == 201) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            elevation: 0.0,
            content: Text("Registrasi Berhasil"),
            duration: const Duration(seconds: 3),
          ),
        );
        Get.toNamed(
          AppRoutes.loginScreen,
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            elevation: 0.0,
            content: Text(response.body.toString()),
            duration: const Duration(seconds: 3),
          ),
        );
      }
      return null;
    } catch (e) {
      Navigator.pop(context);
    }
  }
}

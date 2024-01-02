import 'dart:convert';

import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart';
import 'package:mabs/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:mabs/pages/login_screen/models/login_model.dart';

/// A controller class for the LoginScreen.
///
/// This class manages the state of the LoginScreen, including the
/// current loginModelObj
class LoginController extends GetxController {
  TextEditingController passwordController = TextEditingController();

  TextEditingController emailController = TextEditingController();
  final box = GetStorage();
  String urlServer = "http://192.168.56.1:6969";

  // Rx<LoginModel> loginModelObj = LoginModel(
  //   email: emailController.text,
  //   password: passwordController.text,
  // ).obs;

  Rx<bool> isShowPassword = true.obs;

  @override
  void onClose() {
    super.onClose();
    passwordController.dispose();
    emailController.dispose();
  }

  void loginUser(String email, String password, context) async {
    Uri url = Uri.parse("$urlServer/api/login");
    // final storage = GetStorage();

    try {
      var response = await post(
        url,
        headers: {
          'Accept': 'application/json',
        },
        body: {
          "password": password,
          "email": email,
        },
      );

      if (response.statusCode == 200) {
        var jsonResponse = jsonDecode(response.body) as Map<String, dynamic>;

        var id = jsonResponse["data"]["id"];

        box.write('id', id.toString());

        Get.toNamed(
          AppRoutes.serverpageContainerScreen,
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            elevation: 0.0,
            content: Text("Email atau password salah"),
            duration: const Duration(seconds: 3),
          ),
        );
      }

      return null;
    } catch (e) {
      Navigator.pop(context);
    }
  }

  Future<LoginModel?> getUser(userId) async {
    Uri url = Uri.parse("$urlServer/api/user/$userId");

    var response = await get(
      url,
      headers: {
        'Accept': 'application/json',
      },
    );

    if (response.statusCode == 200) {
      var jsonResponse =
          jsonDecode(response.body)["data"] as Map<String, dynamic>;
      return LoginModel.createFromJson(jsonResponse);
    }
    return null;
  }
}

import 'controller/register_controller.dart';
import 'package:flutter/material.dart';
import 'package:mabs/core/app_export.dart';
import 'package:mabs/core/utils/validation_functions.dart';
import 'package:mabs/widgets/custom_elevated_button.dart';
import 'package:mabs/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class RegisterScreen extends GetWidget<RegisterController> {
  RegisterScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            resizeToAvoidBottomInset: false,
            body: Container(
                width: mediaQueryData.size.width,
                height: mediaQueryData.size.height,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment(0.5, 0),
                        end: Alignment(0.5, 1),
                        colors: [
                      theme.colorScheme.primary,
                      appTheme.indigo900,
                      theme.colorScheme.onPrimary
                    ])),
                child: Form(
                    key: _formKey,
                    child: Container(
                        width: double.maxFinite,
                        padding: EdgeInsets.symmetric(horizontal: 18.h),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                  width: 317.h,
                                  margin:
                                      EdgeInsets.only(left: 3.h, right: 2.h),
                                  child: Text("msg_let_us_know_about".tr,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: theme.textTheme.headlineLarge)),
                              SizedBox(height: 27.v),
                              Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 18.h, vertical: 10.v),
                                  decoration: AppDecoration.fillBlack.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder10),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 5.h),
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text("lbl_username".tr,
                                                      style: theme.textTheme
                                                          .titleMedium),
                                                  SizedBox(height: 7.v),
                                                  _buildUserName()
                                                ])),
                                        SizedBox(height: 32.v),
                                        Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 5.h),
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text("lbl_phone_number".tr,
                                                      style: theme.textTheme
                                                          .titleMedium),
                                                  SizedBox(height: 7.v),
                                                  _buildPhoneNumber()
                                                ])),
                                        SizedBox(height: 31.v),
                                        Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 5.h),
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text("lbl_email".tr,
                                                      style: theme.textTheme
                                                          .titleMedium),
                                                  SizedBox(height: 8.v),
                                                  _buildEmail()
                                                ])),
                                        SizedBox(height: 32.v),
                                        Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 5.h),
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text("lbl_password".tr,
                                                      style: theme.textTheme
                                                          .titleMedium),
                                                  SizedBox(height: 7.v),
                                                  _buildPassword()
                                                ])),
                                        SizedBox(height: 32.v),
                                        _buildRegister()
                                      ])),
                              SizedBox(height: 39.v),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: EdgeInsets.only(left: 68.h),
                                      child: Row(children: [
                                        Text("msg_already_have_an".tr,
                                            style: CustomTextStyles
                                                .bodySmallRobotoWhiteA700),
                                        GestureDetector(
                                            onTap: () {
                                              onTapTxtLogin();
                                            },
                                            child: Padding(
                                                padding:
                                                    EdgeInsets.only(left: 7.h),
                                                child: Text("lbl_login".tr,
                                                    style: theme
                                                        .textTheme.labelLarge)))
                                      ]))),
                              SizedBox(height: 4.v)
                            ]))))));
  }

  /// Section Widget
  Widget _buildUserName() {
    return CustomTextFormField(
        controller: controller.userNameController,
        hintText: "lbl_username".tr,
        validator: (value) {
          if (!isText(value)) {
            return "err_msg_please_enter_valid_text".tr;
          }
          return null;
        });
  }

  /// Section Widget
  Widget _buildPhoneNumber() {
    return CustomTextFormField(
        controller: controller.phoneNumberController,
        hintText: "lbl_0812234576".tr,
        textInputType: TextInputType.phone,
        validator: (value) {
          if (!isValidPhone(value)) {
            return "err_msg_please_enter_valid_phone_number".tr;
          }
          return null;
        });
  }

  /// Section Widget
  Widget _buildEmail() {
    return CustomTextFormField(
        controller: controller.emailController,
        hintText: "lbl_email".tr,
        textInputType: TextInputType.emailAddress,
        validator: (value) {
          if (value == null || (!isValidEmail(value, isRequired: true))) {
            return "err_msg_please_enter_valid_email".tr;
          }
          return null;
        });
  }

  /// Section Widget
  Widget _buildPassword() {
    return Obx(() => CustomTextFormField(
        controller: controller.passwordController,
        hintText: "lbl_password".tr,
        textInputAction: TextInputAction.done,
        textInputType: TextInputType.visiblePassword,
        suffix: InkWell(
            onTap: () {
              controller.isShowPassword.value =
                  !controller.isShowPassword.value;
            },
            child: Container(
                margin: EdgeInsets.fromLTRB(30.h, 13.v, 9.h, 13.v),
                child: CustomImageView(
                    imagePath: ImageConstant.imgIconEye,
                    height: 13.v,
                    width: 18.h))),
        suffixConstraints: BoxConstraints(maxHeight: 40.v),
        validator: (value) {
          if (value == null || (!isValidPassword(value, isRequired: true))) {
            return "err_msg_please_enter_valid_password".tr;
          }
          return null;
        },
        obscureText: controller.isShowPassword.value,
        contentPadding: EdgeInsets.only(left: 16.h, top: 10.v, bottom: 10.v)));
  }

  /// Section Widget
  Widget _buildRegister() {
    return CustomElevatedButton(
        text: "lbl_register".tr,
        onPressed: () {
          if (_formKey.currentState!.validate()) {
            RegisterController.instance.registerUser(
                controller.emailController.text.trim(),
                controller.passwordController.text.trim());
          }
          onTapRegister();
        });
  }

  /// Navigates to the generateScreen
  onTapRegister() {
    Get.toNamed(
      AppRoutes.generateScreen,
    );
  }

  /// Navigates to the loginScreen
  onTapTxtLogin() {
    Get.toNamed(
      AppRoutes.loginScreen,
    );
  }
}

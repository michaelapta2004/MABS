import 'controller/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:mabs/core/app_export.dart';
import 'package:mabs/core/utils/validation_functions.dart';
import 'package:mabs/widgets/custom_elevated_button.dart';
import 'package:mabs/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class LoginScreen extends GetWidget<LoginController> {
  LoginScreen({Key? key}) : super(key: key);

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
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.imgLogin),
                        fit: BoxFit.cover)),
                child: Form(
                    key: _formKey,
                    child: Container(
                        width: double.maxFinite,
                        padding: EdgeInsets.symmetric(
                            horizontal: 15.h, vertical: 47.v),
                        child:
                            Column(mainAxisSize: MainAxisSize.min, children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgAUsOnOff,
                              height: 30.adaptSize,
                              width: 30.adaptSize,
                              radius: BorderRadius.circular(15.h),
                              alignment: Alignment.centerLeft,
                              margin: EdgeInsets.only(left: 3.h),
                              onTap: () {
                                onTapImgAUsOnOff();
                              }),
                          SizedBox(height: 24.v),
                          Container(
                              width: 319.h,
                              margin: EdgeInsets.only(left: 4.h, right: 5.h),
                              child: Text("msg_welcome_to_auto".tr,
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: theme.textTheme.headlineLarge)),
                          Spacer(),
                          _buildTwentyOne(),
                          SizedBox(height: 22.v),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("msg_didn_t_have_an_acount".tr,
                                    style: CustomTextStyles
                                        .bodySmallRobotoWhiteA700),
                                GestureDetector(
                                    onTap: () {
                                      onTapTxtRegister();
                                    },
                                    child: Padding(
                                        padding: EdgeInsets.only(left: 5.h),
                                        child: Text("lbl_register".tr,
                                            style: theme.textTheme.labelLarge)))
                              ]),
                          SizedBox(height: 19.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: GestureDetector(
                                  onTap: () {
                                    onTapTxtForgotPassword();
                                  },
                                  child: Padding(
                                      padding: EdgeInsets.only(left: 114.h),
                                      child: Text("lbl_forgot_password".tr,
                                          style: CustomTextStyles
                                              .labelLargeRed900)))),
                          SizedBox(height: 30.v)
                        ]))))));
  }

  /// Section Widget
  Widget _buildTwentyOne() {
    return SizedBox(
        height: 231.v,
        width: 330.h,
        child: Stack(alignment: Alignment.topCenter, children: [
          Align(
              alignment: Alignment.center,
              child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 26.h, vertical: 13.v),
                  decoration: AppDecoration.outlineBlack900.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder10),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(height: 70.v),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("lbl_password".tr,
                                  style: CustomTextStyles.titleMediumBold),
                              SizedBox(height: 7.v),
                              Obx(() => CustomTextFormField(
                                  controller: controller.passwordController,
                                  hintText: "lbl_password".tr,
                                  textInputType: TextInputType.visiblePassword,
                                  suffix: InkWell(
                                      onTap: () {
                                        controller.isShowPassword.value =
                                            !controller.isShowPassword.value;
                                      },
                                      child: Container(
                                          margin: EdgeInsets.fromLTRB(
                                              30.h, 13.v, 9.h, 13.v),
                                          child: CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgIconEye,
                                              height: 13.v,
                                              width: 18.h))),
                                  suffixConstraints:
                                      BoxConstraints(maxHeight: 40.v),
                                  validator: (value) {
                                    if (value == null ||
                                        (!isValidPassword(value,
                                            isRequired: true))) {
                                      return "err_msg_please_enter_valid_password"
                                          .tr;
                                    }
                                    return null;
                                  },
                                  obscureText: controller.isShowPassword.value,
                                  contentPadding: EdgeInsets.only(
                                      left: 16.h, top: 10.v, bottom: 10.v)))
                            ]),
                        SizedBox(height: 27.v),
                        CustomElevatedButton(
                            text: "lbl_login".tr,
                            margin: EdgeInsets.symmetric(horizontal: 3.h),
                            onPressed: () {
                              navigatetoserverpage2();
                            })
                      ]))),
          Align(
              alignment: Alignment.topCenter,
              child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 26.h),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("lbl_email".tr,
                            style: CustomTextStyles.titleMediumBold),
                        SizedBox(height: 8.v),
                        CustomTextFormField(
                            controller: controller.emailController,
                            hintText: "lbl_email".tr,
                            textInputAction: TextInputAction.done,
                            textInputType: TextInputType.emailAddress,
                            validator: (value) {
                              if (value == null ||
                                  (!isValidEmail(value, isRequired: true))) {
                                return "err_msg_please_enter_valid_email".tr;
                              }
                              return null;
                            })
                      ])))
        ]));
  }

  /// Navigates to the setOnAboutUsScreen when the action is triggered.
  onTapImgAUsOnOff() {
    Get.toNamed(
      AppRoutes.setOnAboutUsScreen,
    );
  }

  /// Navigates to the serverpageContainerScreen when the action is triggered.
  navigatetoserverpage2() {
    Get.toNamed(
      AppRoutes.serverpageContainerScreen,
    );
  }

  /// Navigates to the registerScreen when the action is triggered.
  onTapTxtRegister() {
    Get.toNamed(
      AppRoutes.registerScreen,
    );
  }

  /// Navigates to the forgotpasswordScreen when the action is triggered.
  onTapTxtForgotPassword() {
    Get.toNamed(
      AppRoutes.forgotpasswordScreen,
    );
  }
}

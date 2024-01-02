import 'controller/forgotpassword_controller.dart';
import 'package:flutter/material.dart';
import 'package:mabs/core/app_export.dart';
import 'package:mabs/core/utils/validation_functions.dart';
import 'package:mabs/widgets/custom_elevated_button.dart';
import 'package:mabs/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ForgotpasswordScreen extends GetWidget<ForgotpasswordController> {
  ForgotpasswordScreen({Key? key}) : super(key: key);

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
                      theme.colorScheme.onPrimary,
                      appTheme.indigo900
                    ])),
                child: Form(
                    key: _formKey,
                    child: Container(
                        width: double.maxFinite,
                        padding: EdgeInsets.symmetric(
                            horizontal: 18.h, vertical: 101.v),
                        child:
                            Column(mainAxisSize: MainAxisSize.min, children: [
                          Container(
                              width: 314.h,
                              margin: EdgeInsets.only(left: 2.h, right: 7.h),
                              child: Text("msg_don_t_worry_you".tr,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: theme.textTheme.headlineLarge)),
                          Spacer(flex: 46),
                          Container(
                              width: 278.h,
                              margin: EdgeInsets.only(left: 23.h, right: 22.h),
                              child: Text("msg_we_need_your_email".tr,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: CustomTextStyles.bodyLargeRoboto)),
                          _buildLoginWidgetFrame(),
                          SizedBox(height: 35.v),
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
                                            padding: EdgeInsets.only(left: 7.h),
                                            child: Text("lbl_login".tr,
                                                style: theme
                                                    .textTheme.labelLarge)))
                                  ]))),
                          Spacer(flex: 53)
                        ]))))));
  }

  /// Section Widget
  Widget _buildLoginWidgetFrame() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 18.h, vertical: 10.v),
        decoration: AppDecoration.fillBlack
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 1.v),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.h),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("msg_email_or_phone_number".tr,
                            style: theme.textTheme.titleMedium),
                        SizedBox(height: 6.v),
                        CustomTextFormField(
                            controller: controller.phoneNumberController,
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
                      ])),
              SizedBox(height: 41.v),
              CustomElevatedButton(
                  text: "lbl_send".tr,
                  onPressed: () {
                    onTapSend();
                  })
            ]));
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapSend() {
    Get.toNamed(
      AppRoutes.loginScreen,
    );
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapTxtLogin() {
    Get.toNamed(
      AppRoutes.loginScreen,
    );
  }
}

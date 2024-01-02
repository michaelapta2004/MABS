import 'package:get_storage/get_storage.dart';
import 'package:mabs/pages/login_screen/controller/login_controller.dart';
import 'package:mabs/pages/login_screen/models/login_model.dart';

import 'controller/serverpage_controller.dart';
import 'models/serverpage_model.dart';
import 'package:flutter/material.dart';
import 'package:mabs/core/app_export.dart';
import 'package:mabs/widgets/custom_elevated_button.dart';
import 'package:mabs/widgets/custom_outlined_button.dart';

// ignore_for_file: must_be_immutable
class ServerpagePage extends StatefulWidget {
  ServerpagePage({
    Key? key,
  }) : super(key: key);

  @override
  State<ServerpagePage> createState() => _ServerpagePageState();
}

class _ServerpagePageState extends State<ServerpagePage> {
  final box = GetStorage();

  ServerpageController controller =
      Get.put(ServerpageController(ServerpageModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            backgroundColor: Colors.transparent,
            body: Container(
                width: mediaQueryData.size.width,
                height: mediaQueryData.size.height,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment(0.5, 0),
                        end: Alignment(0.5, 1),
                        colors: [
                      theme.colorScheme.primary,
                      appTheme.gray900,
                      appTheme.gray90001
                    ])),
                child: Container(
                    width: double.maxFinite,
                    decoration: AppDecoration.gradientPrimaryToGray,
                    child: Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 8.h, vertical: 36.v),
                        child: Column(children: [
                          SizedBox(height: 19.v),
                          _buildAccountBox(),
                          SizedBox(height: 74.v),
                          Text("lbl_john_doe_server".tr,
                              style: theme.textTheme.displaySmall),
                          SizedBox(height: 16.v),
                          Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 7.h, vertical: 19.v),
                              decoration: AppDecoration.outlineBlack900
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder10),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    _buildFrameFour(),
                                    SizedBox(height: 22.v),
                                    CustomOutlinedButton(
                                        text: "lbl_server_on".tr,
                                        margin: EdgeInsets.symmetric(
                                            horizontal: 14.h),
                                        leftIcon: Container(
                                            margin:
                                                EdgeInsets.only(right: 30.h),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        23.h)),
                                            child: CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgIcon,
                                                height: 46.v,
                                                width: 48.h))),
                                    SizedBox(height: 25.v),
                                    _buildEight()
                                  ]))
                        ]))))));
  }

  /// Section Widget
  Widget _buildAccountBox() {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 20.h),
        padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 4.v),
        decoration: AppDecoration.outlineBlack9001
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgAvatar,
                height: 40.adaptSize,
                width: 40.adaptSize,
                radius: BorderRadius.circular(6.h),
                margin: EdgeInsets.symmetric(vertical: 3.v),
              ),
              FutureBuilder<LoginModel?>(
                  future: LoginController().getUser(box.read('id').toString()),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return Padding(
                          padding: EdgeInsets.only(left: 16.h, top: 1.v),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(snapshot.data!.username.tr,
                                    style: CustomTextStyles
                                        .titleMediumPoppinsBluegray900),
                                Text(snapshot.data!.email.tr,
                                    style: theme.textTheme.bodyMedium)
                              ]));
                    } else if (snapshot.hasError) {
                      return Text(snapshot.error.toString());
                    } else {
                      return const CircularProgressIndicator();
                    }
                  }),
              Spacer(),
              CustomImageView(
                  imagePath: ImageConstant.imgVector,
                  height: 20.v,
                  width: 19.h,
                  margin: EdgeInsets.only(top: 12.v, right: 2.h, bottom: 12.v),
                  onTap: () {
                    onTapImgVector();
                  })
            ]));
  }

  /// Section Widget
  Widget _buildFrameFour() {
    return Container(
        margin: EdgeInsets.only(right: 1.h),
        padding: EdgeInsets.symmetric(horizontal: 5.h, vertical: 4.v),
        decoration: AppDecoration.outlineBlack9002,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
              padding: EdgeInsets.only(right: 1.h),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                        padding: EdgeInsets.only(top: 16.v),
                        child: RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                  text: "lbl_online_player".tr,
                                  style: theme.textTheme.bodyLarge),
                              TextSpan(
                                  text: "lbl_10".tr,
                                  style: CustomTextStyles
                                      .titleMediumRobotoMonoGreenA700),
                              TextSpan(
                                  text: "lbl".tr,
                                  style: theme.textTheme.bodyLarge),
                              TextSpan(
                                  text: "lbl_50".tr,
                                  style: CustomTextStyles
                                      .titleMediumRobotoMonoOnPrimaryContainer)
                            ]),
                            textAlign: TextAlign.left)),
                    CustomImageView(
                        imagePath: ImageConstant.imgCopyServerAddress,
                        height: 28.v,
                        width: 22.h,
                        margin: EdgeInsets.only(bottom: 16.v))
                  ])),
          SizedBox(height: 26.v),
          RichText(
              text: TextSpan(children: [
                TextSpan(
                    text: "lbl_server_address".tr,
                    style: theme.textTheme.bodyLarge),
                TextSpan(
                    text: "lbl_35_186_153_241".tr,
                    style: CustomTextStyles.titleMediumRobotoMono)
              ]),
              textAlign: TextAlign.left),
          SizedBox(height: 30.v),
          RichText(
              text: TextSpan(children: [
                TextSpan(
                    text: "lbl_gamemode".tr, style: theme.textTheme.bodyLarge),
                TextSpan(
                    text: "lbl_survival".tr,
                    style: CustomTextStyles.titleMediumRobotoMono)
              ]),
              textAlign: TextAlign.left),
          SizedBox(height: 29.v),
          RichText(
              text: TextSpan(children: [
                TextSpan(
                    text: "lbl_version".tr, style: theme.textTheme.bodyLarge),
                TextSpan(
                    text: "lbl_vanilla_1_20_1".tr,
                    style: CustomTextStyles.titleMediumRobotoMono)
              ]),
              textAlign: TextAlign.left),
          SizedBox(height: 13.v)
        ]));
  }

  /// Section Widget
  Widget _buildEight() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 7.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Expanded(
              child: CustomElevatedButton(
                  height: 34.v,
                  text: "lbl_delete_server".tr,
                  margin: EdgeInsets.only(top: 1.v, right: 9.h),
                  buttonStyle: CustomButtonStyles.outlineBlackTL7,
                  buttonTextStyle: theme.textTheme.titleLarge!,
                  onPressed: () {
                    onTapDeleteServer();
                  })),
          Expanded(
              child: CustomElevatedButton(
                  height: 34.v,
                  text: "lbl_clear_world".tr,
                  margin: EdgeInsets.only(left: 9.h),
                  buttonStyle: CustomButtonStyles.outlineBlackTL71,
                  buttonTextStyle: theme.textTheme.titleLarge!))
        ]));
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapImgVector() {
    box.erase();
    Get.toNamed(
      AppRoutes.loginScreen,
    );
  }

  /// Navigates to the generateScreen when the action is triggered.
  onTapDeleteServer() {
    Get.toNamed(
      AppRoutes.generateScreen,
    );
  }
}

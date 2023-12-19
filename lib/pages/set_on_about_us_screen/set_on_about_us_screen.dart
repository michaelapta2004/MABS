import 'controller/set_on_about_us_controller.dart';
import 'package:flutter/material.dart';
import 'package:mabs/core/app_export.dart';
import 'package:mabs/widgets/app_bar/appbar_leading_image.dart';
import 'package:mabs/widgets/app_bar/appbar_title.dart';
import 'package:mabs/widgets/app_bar/custom_app_bar.dart';

class SetOnAboutUsScreen extends GetWidget<SetOnAboutUsController> {
  const SetOnAboutUsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.blueGray90001,
            appBar: _buildAppBar(),
            body: Container(
                width: 351.h,
                padding: EdgeInsets.symmetric(horizontal: 8.h),
                child: Column(children: [
                  SizedBox(height: 15.v),
                  SizedBox(
                      width: 313.h,
                      child: Text("msg_welcome_to_auto".tr,
                          maxLines: 6,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles.titleLargeRobotoBold)),
                  SizedBox(height: 11.v),
                  Text("msg_frequently_ask_question".tr,
                      textAlign: TextAlign.center,
                      style: CustomTextStyles.titleLargeRoboto_1),
                  SizedBox(height: 11.v),
                  SizedBox(
                      width: 315.h,
                      child: RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: "lbl_faq_1".tr,
                                style: CustomTextStyles.titleLargeRobotoBold_1),
                            TextSpan(
                                text: "msg_how_do_you_generate".tr,
                                style: CustomTextStyles.titleLargeRoboto),
                            TextSpan(
                                text: "lbl_answer".tr,
                                style: CustomTextStyles.titleLargeRobotoBold_1),
                            TextSpan(
                                text: "msg_it_s_quite_simple".tr,
                                style: CustomTextStyles.titleLargeRoboto),
                            TextSpan(
                                text: "lbl_faq_2".tr,
                                style: CustomTextStyles.titleLargeRobotoBold_1),
                            TextSpan(
                                text: "msg_how_do_you_moderate".tr,
                                style: CustomTextStyles.titleLargeRoboto),
                            TextSpan(
                                text: "lbl_answer".tr,
                                style: CustomTextStyles.titleLargeRobotoBold_1),
                            TextSpan(
                                text: "msg_when_you_already".tr,
                                style: CustomTextStyles.titleLargeRoboto),
                            TextSpan(
                                text: "lbl_faq_3".tr,
                                style: CustomTextStyles.titleLargeRobotoBold_1),
                            TextSpan(
                                text: "msg_can_you_make_another".tr,
                                style: CustomTextStyles.titleLargeRoboto),
                            TextSpan(
                                text: "msg_answer_no_you".tr,
                                style: CustomTextStyles.titleLargeRobotoBold_1)
                          ]),
                          textAlign: TextAlign.center))
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 39.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgPhXBold,
            margin: EdgeInsets.only(left: 9.h, top: 6.v, bottom: 6.v),
            onTap: () {
              navigatetologinn();
            }),
        centerTitle: true,
        title: AppbarTitle(text: "lbl_about_us".tr),
        styleType: Style.bgShadow);
  }

  /// Navigates to the loginScreen when the action is triggered.
  navigatetologinn() {
    Get.toNamed(
      AppRoutes.loginScreen,
    );
  }
}

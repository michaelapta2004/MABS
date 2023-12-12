import 'controller/generate_controller.dart';
import 'package:flutter/material.dart';
import 'package:mabs/core/app_export.dart';
import 'package:mabs/widgets/custom_drop_down.dart';
import 'package:mabs/widgets/custom_elevated_button.dart';

class GenerateScreen extends GetWidget<GenerateController> {
  const GenerateScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            body: Container(
                width: mediaQueryData.size.width,
                height: mediaQueryData.size.height,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment(0.5, 0),
                        end: Alignment(0.5, 1),
                        colors: [
                          appTheme.black900.withOpacity(0.34),
                          appTheme.black900.withOpacity(0.34)
                        ]),
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.imgGenerate),
                        fit: BoxFit.cover)),
                child: Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.only(left: 7.h, top: 125.v, right: 7.h),
                    child: Column(mainAxisSize: MainAxisSize.min, children: [
                      Container(
                          width: 338.h,
                          margin: EdgeInsets.only(left: 4.h, right: 3.h),
                          child: Text("msg_welcome_john_doe".tr,
                              maxLines: 4,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: CustomTextStyles.headlineLargeBold)),
                      SizedBox(height: 72.v),
                      _buildDDServer(),
                      SizedBox(height: 21.v),
                      CustomElevatedButton(
                          height: 63.v,
                          width: 165.h,
                          text: "lbl_generate".tr,
                          buttonStyle: CustomButtonStyles.outlineBlack,
                          buttonTextStyle: CustomTextStyles.headlineSmallRoboto,
                          onPressed: () {
                            navigatetoserverpage1();
                          }),
                      SizedBox(height: 5.v)
                    ])))));
  }

  /// Section Widget
  Widget _buildDDServer() {
    return Container(
        margin: EdgeInsets.only(right: 1.h),
        decoration: AppDecoration.fillBlack900,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("msg_choose_minecraft".tr,
              style: CustomTextStyles.titleMediumPoppins),
          SizedBox(height: 14.v),
          CustomDropDown(
              icon: Container(
                  margin: EdgeInsets.fromLTRB(30.h, 10.v, 10.h, 10.v),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgArrowup,
                      height: 24.adaptSize,
                      width: 24.adaptSize)),
              hintText: "lbl_select_version".tr,
              items: controller.generateModelObj.value.dropdownItemList.value,
              onChanged: (value) {
                controller.onSelected(value);
              })
        ]));
  }

  /// Navigates to the serverpageContainerScreen
  navigatetoserverpage1() {
    Get.toNamed(
      AppRoutes.serverpageContainerScreen,
    );
  }
}

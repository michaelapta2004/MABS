import 'controller/console_controller.dart';
import 'models/console_model.dart';
import 'package:flutter/material.dart';
import 'package:mabs/core/app_export.dart';

class ConsolePage extends StatelessWidget {
  ConsolePage({Key? key})
      : super(
          key: key,
        );

  ConsoleController controller = Get.put(ConsoleController(ConsoleModel().obs));

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
                appTheme.gray90001,
              ],
            ),
          ),
          child: Container(
            width: double.maxFinite,
            decoration: AppDecoration.gradientPrimaryToGray90001,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 8.h,
                vertical: 35.v,
              ),
              child: Column(
                children: [
                  SizedBox(height: 15.v),
                  Text(
                    "lbl_console".tr,
                    style: CustomTextStyles.titleLargeRowdies,
                  ),
                  SizedBox(height: 25.v),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 16.h,
                      vertical: 10.v,
                    ),
                    decoration: AppDecoration.outlineBlack900.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder10,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          width: 311.h,
                          margin: EdgeInsets.only(right: 1.h),
                          decoration: AppDecoration.fillBlack9001,
                          child: Column(
                            children: [
                              Container(
                                width: 305.h,
                                margin: EdgeInsets.only(right: 5.h),
                                child: RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "msg_01_30_57_server2".tr,
                                        style: CustomTextStyles
                                            .bodyLargeOnPrimaryContainer_1,
                                      ),
                                      TextSpan(
                                        text: "msg_apta360_joined_the".tr,
                                        style: theme.textTheme.bodyLarge,
                                      ),
                                    ],
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              SizedBox(height: 31.v),
                              Container(
                                width: 303.h,
                                margin: EdgeInsets.only(
                                  left: 2.h,
                                  right: 5.h,
                                ),
                                child: RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "msg_01_31_14_server2".tr,
                                        style: CustomTextStyles
                                            .bodyLargeOnPrimaryContainer_1,
                                      ),
                                      TextSpan(
                                        text: "msg_apta360_dhwahd".tr,
                                        style: theme.textTheme.bodyLarge,
                                      ),
                                    ],
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              SizedBox(height: 32.v),
                              Container(
                                width: 305.h,
                                margin: EdgeInsets.only(right: 5.h),
                                child: RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "msg_01_31_30_server2".tr,
                                        style: CustomTextStyles
                                            .bodyLargeOnPrimaryContainer_1,
                                      ),
                                      TextSpan(
                                        text: "msg_apta360_lost_connection".tr,
                                        style: theme.textTheme.bodyLarge,
                                      ),
                                    ],
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              SizedBox(height: 35.v),
                              Container(
                                width: 305.h,
                                margin: EdgeInsets.only(right: 5.h),
                                child: RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "msg_01_31_30_server2".tr,
                                        style: CustomTextStyles
                                            .bodyLargeOnPrimaryContainer_1,
                                      ),
                                      TextSpan(
                                        text: "msg_apta360_left_the_game".tr,
                                        style: theme.textTheme.bodyLarge,
                                      ),
                                    ],
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              SizedBox(height: 35.v),
                            ],
                          ),
                        ),
                        SizedBox(height: 10.v),
                        Container(
                          width: 309.h,
                          padding: EdgeInsets.symmetric(
                            horizontal: 20.h,
                            vertical: 1.v,
                          ),
                          decoration: AppDecoration.outlineBlack9003.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder6,
                          ),
                          child: Text(
                            "lbl_type_here".tr,
                            style: CustomTextStyles.titleMediumRobotoBlack900,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

import '../mods_page/widgets/modlistframe_item_widget.dart';
import 'controller/mods_controller.dart';
import 'models/modlistframe_item_model.dart';
import 'models/mods_model.dart';
import 'package:flutter/material.dart';
import 'package:mabs/core/app_export.dart';
import 'package:mabs/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class ModsPage extends StatelessWidget {
  ModsPage({Key? key})
      : super(
          key: key,
        );

  ModsController controller = Get.put(ModsController(ModsModel().obs));

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
                horizontal: 17.h,
                vertical: 45.v,
              ),
              child: Column(
                children: [
                  SizedBox(height: 5.v),
                  Text(
                    "lbl_mod_for_server".tr,
                    style: CustomTextStyles.titleLargeRowdies,
                  ),
                  SizedBox(height: 42.v),
                  Container(
                    width: 326.h,
                    padding: EdgeInsets.symmetric(
                      horizontal: 30.h,
                      vertical: 1.v,
                    ),
                    decoration: AppDecoration.fillBluegray10001,
                    child: Text(
                      "lbl_instaled_mod".tr,
                      style: CustomTextStyles.titleLargeBlack900,
                    ),
                  ),
                  _buildModListFrame(),
                  SizedBox(height: 12.v),
                  CustomElevatedButton(
                    height: 34.v,
                    width: 151.h,
                    text: "lbl_insert_mod".tr,
                    rightIcon: Container(
                      margin: EdgeInsets.only(left: 8.h),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgMaterialsymbolsdownload,
                        height: 25.adaptSize,
                        width: 25.adaptSize,
                      ),
                    ),
                    buttonStyle: CustomButtonStyles.outlineBlackTL72,
                    buttonTextStyle: theme.textTheme.titleLarge!,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildModListFrame() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 7.h,
        vertical: 6.v,
      ),
      decoration: AppDecoration.outlineBlack9004,
      child: Obx(
        () => ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              height: 10.v,
            );
          },
          itemCount:
              controller.modsModelObj.value.modlistframeItemList.value.length,
          itemBuilder: (context, index) {
            ModlistframeItemModel model =
                controller.modsModelObj.value.modlistframeItemList.value[index];
            return ModlistframeItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }
}

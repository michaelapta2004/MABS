import '../controller/mods_controller.dart';
import '../models/modlistframe_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mabs/core/app_export.dart';

// ignore: must_be_immutable
class ModlistframeItemWidget extends StatelessWidget {
  ModlistframeItemWidget(
    this.modlistframeItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ModlistframeItemModel modlistframeItemModelObj;

  var controller = Get.find<ModsController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2.h),
      decoration: AppDecoration.outlineBlack9005,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgModPic,
            height: 60.v,
            width: 120.h,
            radius: BorderRadius.circular(
              5.h,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 7.h,
              bottom: 43.v,
            ),
            child: Obx(
              () => Text(
                modlistframeItemModelObj.modInfo!.value,
                style: CustomTextStyles.bodySmallRobotoMonoWhiteA700,
              ),
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgDeleteModIcon,
            height: 31.v,
            width: 29.h,
            margin: EdgeInsets.only(
              top: 14.v,
              right: 4.h,
              bottom: 15.v,
            ),
          ),
        ],
      ),
    );
  }
}

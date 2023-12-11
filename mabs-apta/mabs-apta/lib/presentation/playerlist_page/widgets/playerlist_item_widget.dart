import '../controller/playerlist_controller.dart';
import '../models/playerlist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mabs/core/app_export.dart';

// ignore: must_be_immutable
class PlayerlistItemWidget extends StatelessWidget {
  PlayerlistItemWidget(
    this.playerlistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  PlayerlistItemModel playerlistItemModelObj;

  var controller = Get.find<PlayerlistController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 9.h,
          vertical: 4.v,
        ),
        decoration: AppDecoration.outlineWhiteA,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgImage4,
              height: 24.v,
              width: 20.h,
              margin: EdgeInsets.only(left: 5.h),
            ),
            Padding(
              padding: EdgeInsets.only(left: 29.h),
              child: Obx(
                () => Text(
                  playerlistItemModelObj.jon!.value,
                  style: theme.textTheme.titleLarge,
                ),
              ),
            ),
            Spacer(),
            CustomImageView(
              imagePath: ImageConstant.imgVectorRed500,
              height: 16.v,
              width: 19.h,
              margin: EdgeInsets.symmetric(vertical: 4.v),
            ),
          ],
        ),
      ),
    );
  }
}

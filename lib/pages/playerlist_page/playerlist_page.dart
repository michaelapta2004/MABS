import '../playerlist_page/widgets/playerlist_item_widget.dart';
import 'controller/playerlist_controller.dart';
import 'models/playerlist_item_model.dart';
import 'models/playerlist_model.dart';
import 'package:flutter/material.dart';
import 'package:mabs/core/app_export.dart';
import 'package:mabs/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class PlayerlistPage extends StatelessWidget {
  PlayerlistPage({Key? key})
      : super(
          key: key,
        );

  PlayerlistController controller =
      Get.put(PlayerlistController(PlayerlistModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        resizeToAvoidBottomInset: false,
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
                horizontal: 23.h,
                vertical: 45.v,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "msg_player_list_in_server".tr,
                    style: theme.textTheme.headlineSmall,
                  ),
                  SizedBox(height: 16.v),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 4.v),
                    decoration: AppDecoration.fillBlack9001,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(height: 22.v),
                        Padding(
                          padding: EdgeInsets.only(left: 13.h),
                          child: Text(
                            "lbl_nickname".tr,
                            style: theme.textTheme.titleMedium,
                          ),
                        ),
                        SizedBox(height: 8.v),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 13.h,
                            right: 26.h,
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: CustomTextFormField(
                                  controller: controller.nameController,
                                  hintText: "lbl_john360".tr,
                                  hintStyle: CustomTextStyles.bodyLargeInter,
                                  borderDecoration:
                                      TextFormFieldStyleHelper.fillBlueGrayTL8,
                                ),
                              ),
                              CustomTextFormField(
                                width: 49.h,
                                controller: controller
                                    .materialsymbolspersonaddController,
                                textInputAction: TextInputAction.done,
                                suffix: Container(
                                  padding:
                                      EdgeInsets.fromLTRB(11.h, 8.v, 12.h, 7.v),
                                  decoration: BoxDecoration(
                                    color: appTheme.green40001,
                                    borderRadius: BorderRadius.horizontal(
                                      right: Radius.circular(7.h),
                                    ),
                                  ),
                                  child: CustomImageView(
                                    imagePath: ImageConstant
                                        .imgMaterialsymbolspersonadd,
                                    height: 25.adaptSize,
                                    width: 25.adaptSize,
                                  ),
                                ),
                                suffixConstraints: BoxConstraints(
                                  maxHeight: 40.v,
                                ),
                                borderDecoration:
                                    TextFormFieldStyleHelper.fillGreen,
                                fillColor: appTheme.green40001,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 24.v),
                        Container(
                          height: 387.v,
                          width: 314.h,
                          decoration: AppDecoration.fillBlack9001,
                          child: Stack(
                            alignment: Alignment.centerLeft,
                            children: [
                              _buildPlayerList(),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 44.h),
                                  child: SizedBox(
                                    height: 380.v,
                                    child: VerticalDivider(
                                      width: 3.h,
                                      thickness: 3.v,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 4.v),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPlayerList() {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: EdgeInsets.only(bottom: 243.v),
        child: Obx(
          () => ListView.separated(
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                height: 1.v,
              );
            },
            itemCount: controller
                .playerlistModelObj.value.playerlistItemList.value.length,
            itemBuilder: (context, index) {
              PlayerlistItemModel model = controller
                  .playerlistModelObj.value.playerlistItemList.value[index];
              return PlayerlistItemWidget(
                model,
              );
            },
          ),
        ),
      ),
    );
  }
}

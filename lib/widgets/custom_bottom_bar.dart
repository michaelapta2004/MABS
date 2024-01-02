import 'package:flutter/material.dart';
import 'package:mabs/core/app_export.dart';

// ignore_for_file: must_be_immutable
class CustomBottomBar extends StatelessWidget {
  CustomBottomBar({
    Key? key,
    this.onChanged,
  }) : super(
          key: key,
        );

  RxInt selectedIndex = 0.obs;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgNavServer,
      activeIcon: ImageConstant.imgNavServer,
      title: "lbl_server".tr,
      type: BottomBarEnum.Server,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavPlayers,
      activeIcon: ImageConstant.imgNavPlayers,
      title: "lbl_players".tr,
      type: BottomBarEnum.Players,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavConsole,
      activeIcon: ImageConstant.imgNavConsole,
      title: "lbl_console".tr,
      type: BottomBarEnum.Console,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavMods,
      activeIcon: ImageConstant.imgNavMods,
      title: "lbl_mods".tr,
      type: BottomBarEnum.Mods,
    )
  ];

  Function(BottomBarEnum)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55.v,
      decoration: BoxDecoration(
        color: appTheme.green400,
        borderRadius: BorderRadius.circular(
          14.h,
        ),
      ),
      child: Obx(
        () => BottomNavigationBar(
          backgroundColor: Colors.transparent,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedFontSize: 0,
          elevation: 0,
          currentIndex: selectedIndex.value,
          type: BottomNavigationBarType.fixed,
          items: List.generate(bottomMenuList.length, (index) {
            return BottomNavigationBarItem(
              icon: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: bottomMenuList[index].icon,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    color: appTheme.gray80001,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 6.v),
                    child: Text(
                      bottomMenuList[index].title ?? "",
                      style: theme.textTheme.bodySmall!.copyWith(
                        color: appTheme.gray80001,
                      ),
                    ),
                  ),
                ],
              ),
              activeIcon: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: bottomMenuList[index].activeIcon,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    color: appTheme.green900,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 6.v),
                    child: Text(
                      bottomMenuList[index].title ?? "",
                      style: CustomTextStyles.bodySmallGreen900.copyWith(
                        color: appTheme.green900.withOpacity(0.89),
                      ),
                    ),
                  ),
                ],
              ),
              label: '',
            );
          }),
          onTap: (index) {
            selectedIndex.value = index;
            onChanged?.call(bottomMenuList[index].type);
          },
        ),
      ),
    );
  }
}

enum BottomBarEnum {
  Server,
  Players,
  Console,
  Mods,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    this.title,
    required this.type,
  });

  String icon;

  String activeIcon;

  String? title;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'controller/serverpage_container_controller.dart';
import 'package:flutter/material.dart';
import 'package:mabs/core/app_export.dart';
import 'package:mabs/pages/console_page/console_page.dart';
import 'package:mabs/pages/mods_page/mods_page.dart';
import 'package:mabs/pages/playerlist_page/playerlist_page.dart';
import 'package:mabs/pages/serverpage_page/serverpage_page.dart';
import 'package:mabs/widgets/custom_bottom_bar.dart';

class ServerpageContainerScreen
    extends GetWidget<ServerpageContainerController> {
  final String? userId;
  const ServerpageContainerScreen({this.userId, Key? key}) : super(key: key);

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
                padding: EdgeInsets.only(bottom: 55.v),
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment(0.5, 0),
                        end: Alignment(0.5, 1),
                        colors: [
                      theme.colorScheme.primary,
                      appTheme.gray900,
                      appTheme.gray90001
                    ])),
                child: Navigator(
                    key: Get.nestedKey(1),
                    initialRoute: AppRoutes.serverpagePage,
                    onGenerateRoute: (routeSetting) => GetPageRoute(
                        page: () => getCurrentPage(routeSetting.name!),
                        transition: Transition.noTransition))),
            bottomNavigationBar: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.h),
                child: _buildBottomBar())));
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Get.toNamed(getCurrentRoute(type), id: 1);
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Server:
        return AppRoutes.serverpagePage;
      case BottomBarEnum.Players:
        return AppRoutes.playerlistPage;
      case BottomBarEnum.Console:
        return AppRoutes.consolePage;
      case BottomBarEnum.Mods:
        return AppRoutes.modsPage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.serverpagePage:
        return ServerpagePage();
      case AppRoutes.playerlistPage:
        return PlayerlistPage();
      case AppRoutes.consolePage:
        return ConsolePage();
      case AppRoutes.modsPage:
        return ModsPage();
      default:
        return DefaultWidget();
    }
  }
}

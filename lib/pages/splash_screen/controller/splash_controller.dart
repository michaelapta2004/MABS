import 'package:get_storage/get_storage.dart';
import 'package:mabs/core/app_export.dart';
import 'package:mabs/pages/splash_screen/models/splash_model.dart';

class SplashController extends GetxController {
  Rx<SplashModel> splashModelObj = SplashModel().obs;

  @override
  void onReady() {
    final box = GetStorage();
    Future.delayed(const Duration(milliseconds: 3000), () {
      if (box.read('id') != null) {
        Get.offNamed(
          AppRoutes.serverpageContainerScreen,
        );
      } else if (box.read('id') == null) {
        Get.offNamed(
          AppRoutes.loginScreen,
        );
      }
    });
  }
}

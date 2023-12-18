import '../controller/set_on_about_us_controller.dart';
import 'package:get/get.dart';

class SetOnAboutUsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SetOnAboutUsController());
  }
}

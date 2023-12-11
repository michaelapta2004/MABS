import '../controller/set_on_about_us_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SetOnAboutUsScreen.
///
/// This class ensures that the SetOnAboutUsController is created when the
/// SetOnAboutUsScreen is first loaded.
class SetOnAboutUsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SetOnAboutUsController());
  }
}

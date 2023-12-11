import '../controller/serverpage_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ServerpageContainerScreen.
///
/// This class ensures that the ServerpageContainerController is created when the
/// ServerpageContainerScreen is first loaded.
class ServerpageContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ServerpageContainerController());
  }
}

import '../controller/serverpage_container_controller.dart';
import 'package:get/get.dart';

/// class to make sure ServerpageContainerController is created when ServerpageContainerScreen loaded

class ServerpageContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ServerpageContainerController());
  }
}

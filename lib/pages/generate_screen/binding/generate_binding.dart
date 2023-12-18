import '../controller/generate_controller.dart';
import 'package:get/get.dart';

class GenerateBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GenerateController());
  }
}

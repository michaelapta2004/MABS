import '../controller/forgotpassword_controller.dart';
import 'package:get/get.dart';

class ForgotpasswordBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ForgotpasswordController());
  }
}

import '../controller/generate_controller.dart';
import 'package:get/get.dart';

/// A binding class for the GenerateScreen.
///
/// This class ensures that the GenerateController is created when the
/// GenerateScreen is first loaded.
class GenerateBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GenerateController());
  }
}

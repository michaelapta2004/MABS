import 'package:mabs/core/app_export.dart';
import 'package:mabs/pages/app_navigation_screen/models/app_navigation_model.dart';

class AppNavigationController extends GetxController {
  Rx<AppNavigationModel> appNavigationModelObj = AppNavigationModel().obs;
}

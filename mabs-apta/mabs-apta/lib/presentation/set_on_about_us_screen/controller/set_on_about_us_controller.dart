import 'package:mabs/core/app_export.dart';
import 'package:mabs/presentation/set_on_about_us_screen/models/set_on_about_us_model.dart';

/// A controller class for the SetOnAboutUsScreen.
///
/// This class manages the state of the SetOnAboutUsScreen, including the
/// current setOnAboutUsModelObj
class SetOnAboutUsController extends GetxController {
  Rx<SetOnAboutUsModel> setOnAboutUsModelObj = SetOnAboutUsModel().obs;
}

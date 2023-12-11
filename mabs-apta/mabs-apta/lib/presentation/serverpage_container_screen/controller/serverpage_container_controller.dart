import 'package:mabs/core/app_export.dart';
import 'package:mabs/presentation/serverpage_container_screen/models/serverpage_container_model.dart';

/// A controller class for the ServerpageContainerScreen.
///
/// This class manages the state of the ServerpageContainerScreen, including the
/// current serverpageContainerModelObj
class ServerpageContainerController extends GetxController {
  Rx<ServerpageContainerModel> serverpageContainerModelObj =
      ServerpageContainerModel().obs;
}

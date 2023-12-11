import 'package:mabs/core/app_export.dart';
import 'package:mabs/presentation/serverpage_page/models/serverpage_model.dart';

/// A controller class for the ServerpagePage.
///
/// This class manages the state of the ServerpagePage, including the
/// current serverpageModelObj
class ServerpageController extends GetxController {
  ServerpageController(this.serverpageModelObj);

  Rx<ServerpageModel> serverpageModelObj;
}

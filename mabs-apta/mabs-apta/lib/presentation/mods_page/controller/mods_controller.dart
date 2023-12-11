import 'package:mabs/core/app_export.dart';
import 'package:mabs/presentation/mods_page/models/mods_model.dart';

/// A controller class for the ModsPage.
///
/// This class manages the state of the ModsPage, including the
/// current modsModelObj
class ModsController extends GetxController {
  ModsController(this.modsModelObj);

  Rx<ModsModel> modsModelObj;
}

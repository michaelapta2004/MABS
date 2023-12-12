import 'package:mabs/core/app_export.dart';
import 'package:mabs/pages/mods_page/models/mods_model.dart';

class ModsController extends GetxController {
  ModsController(this.modsModelObj);

  Rx<ModsModel> modsModelObj;
}

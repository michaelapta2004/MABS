import '../../../core/app_export.dart';
import 'modlistframe_item_model.dart';

/// class for defines the variables in mods_page

class ModsModel {
  Rx<List<ModlistframeItemModel>> modlistframeItemList = Rx([
    ModlistframeItemModel(modInfo: "Bendi mod".obs),
    ModlistframeItemModel(modInfo: "Bendi mod v type".obs)
  ]);
}

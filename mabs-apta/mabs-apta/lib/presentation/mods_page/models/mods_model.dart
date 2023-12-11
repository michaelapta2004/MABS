import '../../../core/app_export.dart';
import 'modlistframe_item_model.dart';

/// This class defines the variables used in the [mods_page],
/// and is typically used to hold data that is passed between different parts of the application.
class ModsModel {
  Rx<List<ModlistframeItemModel>> modlistframeItemList = Rx([
    ModlistframeItemModel(modInfo: "Bendi mod".obs),
    ModlistframeItemModel(modInfo: "Bendi mod v type".obs)
  ]);
}

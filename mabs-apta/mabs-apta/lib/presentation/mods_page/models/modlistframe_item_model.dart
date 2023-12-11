import '../../../core/app_export.dart';

/// This class is used in the [modlistframe_item_widget] screen.
class ModlistframeItemModel {
  ModlistframeItemModel({
    this.modInfo,
    this.id,
  }) {
    modInfo = modInfo ?? Rx("Bendi mod");
    id = id ?? Rx("");
  }

  Rx<String>? modInfo;

  Rx<String>? id;
}

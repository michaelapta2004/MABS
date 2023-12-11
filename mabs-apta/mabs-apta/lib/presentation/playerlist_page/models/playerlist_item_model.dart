import '../../../core/app_export.dart';

/// This class is used in the [playerlist_item_widget] screen.
class PlayerlistItemModel {
  PlayerlistItemModel({
    this.jon,
    this.id,
  }) {
    jon = jon ?? Rx("@ Jon");
    id = id ?? Rx("");
  }

  Rx<String>? jon;

  Rx<String>? id;
}

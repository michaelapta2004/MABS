import '../../../core/app_export.dart';
import 'playerlist_item_model.dart';

/// class for variables in playerlist_page

class PlayerlistModel {
  Rx<List<PlayerlistItemModel>> playerlistItemList = Rx([
    PlayerlistItemModel(jon: "@ Jon".obs),
    PlayerlistItemModel(jon: "@ Apta".obs),
    PlayerlistItemModel(jon: "@ Sultan".obs),
    PlayerlistItemModel(jon: "@ Rafi".obs)
  ]);
}

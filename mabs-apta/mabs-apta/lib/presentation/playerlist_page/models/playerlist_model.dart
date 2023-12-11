import '../../../core/app_export.dart';
import 'playerlist_item_model.dart';

/// This class defines the variables used in the [playerlist_page],
/// and is typically used to hold data that is passed between different parts of the application.
class PlayerlistModel {
  Rx<List<PlayerlistItemModel>> playerlistItemList = Rx([
    PlayerlistItemModel(jon: "@ Jon".obs),
    PlayerlistItemModel(jon: "@ Apta".obs),
    PlayerlistItemModel(jon: "@ Sultan".obs),
    PlayerlistItemModel(jon: "@ Rafi".obs)
  ]);
}

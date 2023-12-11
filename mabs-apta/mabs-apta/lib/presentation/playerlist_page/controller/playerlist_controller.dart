import 'package:mabs/core/app_export.dart';
import 'package:mabs/presentation/playerlist_page/models/playerlist_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the PlayerlistPage.
///
/// This class manages the state of the PlayerlistPage, including the
/// current playerlistModelObj
class PlayerlistController extends GetxController {
  PlayerlistController(this.playerlistModelObj);

  TextEditingController nameController = TextEditingController();

  TextEditingController materialsymbolspersonaddController =
      TextEditingController();

  Rx<PlayerlistModel> playerlistModelObj;

  @override
  void onClose() {
    super.onClose();
    nameController.dispose();
    materialsymbolspersonaddController.dispose();
  }
}

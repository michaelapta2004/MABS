import 'package:mabs/core/app_export.dart';
import 'package:mabs/pages/generate_screen/models/generate_model.dart';

class GenerateController extends GetxController {
  Rx<GenerateModel> generateModelObj = GenerateModel().obs;

  SelectionPopupModel? selectedDropDownValue;

  onSelected(dynamic value) {
    for (var element in generateModelObj.value.dropdownItemList.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    generateModelObj.value.dropdownItemList.refresh();
  }
}

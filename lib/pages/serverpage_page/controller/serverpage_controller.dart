import 'package:mabs/core/app_export.dart';
import 'package:mabs/pages/serverpage_page/models/serverpage_model.dart';

/// class for manages ServerpagePage state, includ current serverpageModelObj
class ServerpageController extends GetxController {
  ServerpageController(this.serverpageModelObj);

  Rx<ServerpageModel> serverpageModelObj;
}

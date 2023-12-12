import 'package:mabs/core/app_export.dart';
import 'package:mabs/pages/console_page/models/console_model.dart';

class ConsoleController extends GetxController {
  ConsoleController(this.consoleModelObj);

  Rx<ConsoleModel> consoleModelObj;
}

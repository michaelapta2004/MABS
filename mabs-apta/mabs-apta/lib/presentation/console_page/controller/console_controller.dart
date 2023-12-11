import 'package:mabs/core/app_export.dart';
import 'package:mabs/presentation/console_page/models/console_model.dart';

/// A controller class for the ConsolePage.
///
/// This class manages the state of the ConsolePage, including the
/// current consoleModelObj
class ConsoleController extends GetxController {
  ConsoleController(this.consoleModelObj);

  Rx<ConsoleModel> consoleModelObj;
}

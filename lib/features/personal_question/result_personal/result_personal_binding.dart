import 'result_personal_controller.dart';
import 'package:get/get.dart';

class ResultPersonalBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ResultPersonalController>(() => ResultPersonalController());
  }
}

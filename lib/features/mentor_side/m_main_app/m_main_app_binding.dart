import 'm_main_app_controller.dart';
import 'package:get/get.dart';

class MMainAppBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MMainAppController>(() => MMainAppController());
  }
}

import 'm_account_controller.dart';
import 'package:get/get.dart';

class MAccountBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MAccountController>(() => MAccountController());
  }
}

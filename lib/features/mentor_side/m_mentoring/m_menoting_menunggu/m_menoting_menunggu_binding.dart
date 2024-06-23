import 'm_menoting_menunggu_controller.dart';
import 'package:get/get.dart';

class MMenotingMenungguBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MMenotingMenungguController>(() => MMenotingMenungguController());
  }
}

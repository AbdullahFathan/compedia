import 'm_menoting_disejutui_controller.dart';
import 'package:get/get.dart';

class MMenotingDisejutuiBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MMenotingDisejutuiController>(() => MMenotingDisejutuiController());
  }
}

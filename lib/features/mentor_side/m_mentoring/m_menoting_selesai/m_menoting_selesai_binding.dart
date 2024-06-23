import 'm_menoting_selesai_controller.dart';
import 'package:get/get.dart';

class MMenotingSelesaiBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MMenotingSelesaiController>(() => MMenotingSelesaiController());
  }
}

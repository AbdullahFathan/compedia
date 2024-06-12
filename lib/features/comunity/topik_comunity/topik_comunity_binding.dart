import 'topik_comunity_controller.dart';
import 'package:get/get.dart';

class TopikComunityBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TopikComunityController>(() => TopikComunityController());
  }
}

import 'about_comunity_controller.dart';
import 'package:get/get.dart';

class AboutComunityBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AboutComunityController>(() => AboutComunityController());
  }
}

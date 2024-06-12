import 'detail_comunity_controller.dart';
import 'package:get/get.dart';

class DetailComunityBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailComunityController>(() => DetailComunityController());
  }
}

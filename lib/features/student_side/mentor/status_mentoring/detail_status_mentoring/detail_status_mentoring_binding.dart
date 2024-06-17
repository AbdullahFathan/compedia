import 'detail_status_mentoring_controller.dart';
import 'package:get/get.dart';

class DetailStatusMentoringBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailStatusMentoringController>(() => DetailStatusMentoringController());
  }
}

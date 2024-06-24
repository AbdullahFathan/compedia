import 'm_detail_mentoring_controller.dart';
import 'package:get/get.dart';

class MDetailMentoringBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MDetailMentoringController>(() => MDetailMentoringController());
  }
}

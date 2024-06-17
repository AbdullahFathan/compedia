import 'jadwal_mentoring_controller.dart';
import 'package:get/get.dart';

class JadwalMentoringBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<JadwalMentoringController>(() => JadwalMentoringController());
  }
}

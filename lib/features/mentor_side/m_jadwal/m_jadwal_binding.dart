import 'm_jadwal_controller.dart';
import 'package:get/get.dart';

class MJadwalBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MJadwalController>(() => MJadwalController());
  }
}

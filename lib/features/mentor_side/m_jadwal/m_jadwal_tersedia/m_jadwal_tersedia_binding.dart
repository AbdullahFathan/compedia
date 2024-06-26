import 'm_jadwal_tersedia_controller.dart';
import 'package:get/get.dart';

class MJadwalTersediaBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MJadwalTersediaController>(() => MJadwalTersediaController());
  }
}

import 'm_jadwal_kaldaluwarsa_controller.dart';
import 'package:get/get.dart';

class MJadwalKaldaluwarsaBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MJadwalKaldaluwarsaController>(() => MJadwalKaldaluwarsaController());
  }
}

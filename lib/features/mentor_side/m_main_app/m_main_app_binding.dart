import 'package:compedia/features/mentor_side/m_home_page/m_home_page_controller.dart';
import 'package:compedia/features/mentor_side/m_jadwal/m_jadwal_controller.dart';
import 'package:compedia/features/mentor_side/m_jadwal/m_jadwal_kaldaluwarsa/m_jadwal_kaldaluwarsa_controller.dart';
import 'package:compedia/features/mentor_side/m_jadwal/m_jadwal_tersedia/m_jadwal_tersedia_controller.dart';
import 'package:compedia/features/mentor_side/m_mentoring/m_menoting_disejutui/m_menoting_disejutui_controller.dart';
import 'package:compedia/features/mentor_side/m_mentoring/m_menoting_menunggu/m_menoting_menunggu_controller.dart';
import 'package:compedia/features/mentor_side/m_mentoring/m_menoting_selesai/m_menoting_selesai_controller.dart';
import 'package:compedia/features/mentor_side/m_mentoring/m_mentoring_controller.dart';

import 'm_main_app_controller.dart';
import 'package:get/get.dart';

class MMainAppBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MMainAppController>(() => MMainAppController());
    Get.lazyPut<MHomePageController>(() => MHomePageController());
    Get.lazyPut<MMentoringController>(() => MMentoringController());
    Get.lazyPut<MMenotingDisejutuiController>(
        () => MMenotingDisejutuiController());
    Get.lazyPut<MMenotingMenungguController>(
        () => MMenotingMenungguController());
    Get.lazyPut<MMenotingSelesaiController>(() => MMenotingSelesaiController());
    Get.lazyPut<MJadwalController>(() => MJadwalController());
    Get.lazyPut<MJadwalTersediaController>(() => MJadwalTersediaController());
    Get.lazyPut<MJadwalKaldaluwarsaController>(
        () => MJadwalKaldaluwarsaController());
  }
}

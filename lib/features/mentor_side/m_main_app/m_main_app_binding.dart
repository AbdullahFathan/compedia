import 'package:compedia/features/mentor_side/m_home_page/m_home_page_controller.dart';

import 'm_main_app_controller.dart';
import 'package:get/get.dart';

class MMainAppBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MMainAppController>(() => MMainAppController());
    Get.lazyPut<MHomePageController>(() => MHomePageController());
  }
}

import 'package:compedia/features/competition/competition_controller.dart';
import 'package:compedia/features/home/home_controller.dart';
import 'package:compedia/features/level/level_controller.dart';
import 'package:compedia/features/mentor/mentor_controller.dart';
import 'package:compedia/features/profile/profile_controller.dart';

import 'main_app_controller.dart';
import 'package:get/get.dart';

class MainAppBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MainAppController>(() => MainAppController());
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<CompetitionController>(() => CompetitionController());
    Get.lazyPut<MentorController>(() => MentorController());
    Get.lazyPut<LevelController>(() => LevelController());
    Get.lazyPut<ProfileController>(() => ProfileController());
  }
}

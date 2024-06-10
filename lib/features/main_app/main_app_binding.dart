import 'package:compedia/features/competition/competition_controller.dart';
import 'package:compedia/features/competition/find_competion/find_competion_controller.dart';
import 'package:compedia/features/competition/followed_competion/followed_competion_controller.dart';
import 'package:compedia/features/comunity/comunity_controller.dart';
import 'package:compedia/features/home/home_controller.dart';

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
    Get.lazyPut<ComunityController>(() => ComunityController());
    Get.lazyPut<ProfileController>(() => ProfileController());
    Get.lazyPut<FollowedCompetionController>(
        () => FollowedCompetionController());
    Get.lazyPut<FindCompetionController>(() => FindCompetionController());
  }
}

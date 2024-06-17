import 'package:compedia/features/student_side/competition/competition_controller.dart';
import 'package:compedia/features/student_side/competition/find_competion/find_competion_controller.dart';
import 'package:compedia/features/student_side/competition/followed_competion/followed_competion_controller.dart';
import 'package:compedia/features/student_side/comunity/comunity_controller.dart';
import 'package:compedia/features/student_side/comunity/find_comunity/find_comunity_controller.dart';
import 'package:compedia/features/student_side/comunity/joined_comunity/joined_comunity_controller.dart';
import 'package:compedia/features/student_side/home/home_controller.dart';
import 'package:compedia/features/student_side/mentor/find_mentor/find_mentor_controller.dart';

import 'package:compedia/features/student_side/mentor/mentor_controller.dart';
import 'package:compedia/features/student_side/mentor/status_mentoring/status_mentoring_controller.dart';
import 'package:compedia/features/student_side/profile/profile_controller.dart';

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
    Get.lazyPut<FindMentorController>(() => FindMentorController());
    Get.lazyPut<StatusMentoringController>(() => StatusMentoringController());
    Get.lazyPut<JoinedComunityController>(() => JoinedComunityController());
    Get.lazyPut<FindComunityController>(() => FindComunityController());
  }
}

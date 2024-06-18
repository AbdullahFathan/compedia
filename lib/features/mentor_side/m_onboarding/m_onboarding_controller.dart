import 'package:compedia/features/mentor_side/m_survey/m_survey_page.dart';
import 'package:compedia/models/onboarding.dart';
import 'package:compedia/utils/helper/base/base_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MOnboardingController extends BaseController<void> {
  PageController pageController = PageController();

  RxInt currIndex = 0.obs;

  void onPageChange(int index) {
    currIndex.value = index;
  }

  void nextPage() {
    if (currIndex.value < mOnBoardingConstans.length - 1) {
      pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      Get.toNamed(MSurveyPage.route);
    }
  }

  void skipPage() {
    pageController.jumpToPage(onboardingConstan.length - 1);
  }

  @override
  void onClose() {
    pageController.dispose();
    super.onClose();
  }

  Future<void> loadData() async {}
}

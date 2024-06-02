import 'package:compedia/utils/helper/base/base_controller.dart';
import 'package:compedia/features/login/login_page.dart';
import 'package:compedia/features/onboarding/models/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingController extends BaseController<void> {
  PageController pageController = PageController();

  RxInt currIndex = 0.obs;

  void onPageChange(int index) {
    currIndex.value = index;
  }

  void nextPage() {
    if (currIndex.value < onboardingConstan.length - 1) {
      pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      Get.offNamed(LoginPage.route);
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
}

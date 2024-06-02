import 'package:compedia/utils/helper/base/base_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class QuestionnaireController extends BaseController<void> {
  PageController pageController = PageController();

  RxInt currIndex = 0.obs;

  void nextPage() {
    if (currIndex.value < 2) {
      currIndex.value++;
      pageController.animateToPage(
        currIndex.value,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  void prevPage() {
    if (currIndex.value > 0) {
      currIndex.value--;
      pageController.animateToPage(
        currIndex.value,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  Future<void> loadData() async {}
}

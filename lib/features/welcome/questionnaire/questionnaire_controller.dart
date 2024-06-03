import 'package:compedia/features/welcome/persona_done/persona_done_page.dart';
import 'package:compedia/utils/helper/base/base_controller.dart';
import 'package:compedia/utils/helper/snackbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class QuestionnaireController extends BaseController<void> {
  PageController pageController = PageController();

  RxInt currIndex = 0.obs;

  List<String> answerOne = [];
  List<String> answerTwo = [];
  List<String> answerThird = [];

  void nextPage() {
    var listData = getCurentList();
    if (listData.isNotEmpty) {
      if (currIndex.value < 2) {
        currIndex.value++;
        pageController.animateToPage(
          currIndex.value,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
        );
      } else {
        Get.toNamed(PersonaDonePage.route);
      }
    } else {
      SnackBarHelper.erorSnackBar("Perlu memilih 1 item");
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

  void addToList(String item) {
    var listData = getCurentList();
    listData.add(item);
  }

  void removeFromList(String item) {
    var listData = getCurentList();
    listData.remove(item);
  }

  List<String> getCurentList() {
    switch (currIndex.value) {
      case 0:
        return answerOne;
      case 1:
        return answerTwo;
      case 2:
        return answerThird;
      default:
        return [];
    }
  }

  Future<void> loadData() async {}
}

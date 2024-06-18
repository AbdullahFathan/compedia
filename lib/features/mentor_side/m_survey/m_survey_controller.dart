import 'package:compedia/features/mentor_side/m_survey/m_survey_result/m_survey_result_page.dart';
import 'package:compedia/features/student_side/main_app/main_app_page.dart';
import 'package:compedia/utils/helper/base/base_controller.dart';
import 'package:compedia/utils/helper/snackbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MSurveyController extends BaseController<void> {
  PageController pageController = PageController();

  RxInt currIndex = 0.obs;

  TextEditingController answerTwoController = TextEditingController();
  TextEditingController answerThirdController = TextEditingController();
  TextEditingController answerFour1Controller = TextEditingController();
  TextEditingController answerFour2Controller = TextEditingController();

  List<String> answerOne = [];

  void nextPage() {
    if (_validatorForm()) {
      if (currIndex.value < 3) {
        currIndex.value++;
        pageController.animateToPage(
          currIndex.value,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
        );
      } else {
        Get.offAllNamed(MSurveyResultPage.route);
      }
    } else {
      SnackBarHelper.erorSnackBar("Perlu mengisi data");
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
    } else {
      Get.offAllNamed(MainAppPage.route);
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

  bool _validatorForm() {
    switch (currIndex.value) {
      case 0:
        return answerOne.isNotEmpty;
      case 1:
        return answerTwoController.text.isNotEmpty;
      case 2:
        return answerThirdController.text.isNotEmpty;
      case 3:
        return answerFour1Controller.text.isNotEmpty &&
            answerFour2Controller.text.isNotEmpty;

      default:
        return false;
    }
  }

  List<String> getCurentList() {
    switch (currIndex.value) {
      case 0:
        return answerOne;
      default:
        return [];
    }
  }

  Future<void> loadData() async {}
}

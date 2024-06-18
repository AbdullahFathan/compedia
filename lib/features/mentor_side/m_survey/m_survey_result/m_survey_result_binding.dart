import 'm_survey_result_controller.dart';
import 'package:get/get.dart';

class MSurveyResultBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MSurveyResultController>(() => MSurveyResultController());
  }
}

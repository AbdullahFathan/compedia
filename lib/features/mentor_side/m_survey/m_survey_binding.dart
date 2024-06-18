import 'm_survey_controller.dart';
import 'package:get/get.dart';

class MSurveyBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MSurveyController>(() => MSurveyController());
  }
}

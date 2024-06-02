import 'questionnaire_controller.dart';
import 'package:get/get.dart';

class QuestionnaireBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<QuestionnaireController>(() => QuestionnaireController());
  }
}

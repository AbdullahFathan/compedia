import 'personal_question_controller.dart';
import 'package:get/get.dart';

class PersonalQuestionBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PersonalQuestionController>(() => PersonalQuestionController());
  }
}

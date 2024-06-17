import 'package:get/get.dart';
import 'personal_question_binding.dart';
import 'personal_question_page.dart';

final personalQuestionRoute = [
  GetPage(
    name: PersonalQuestionPage.route,
    page: () => const PersonalQuestionPage(),
    binding: PersonalQuestionBinding(),
  ),
];

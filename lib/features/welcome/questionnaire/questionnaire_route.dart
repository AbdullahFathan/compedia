import 'package:get/get.dart';
import 'questionnaire_binding.dart';
import 'questionnaire_page.dart';

final questionnaireRoute = [
  GetPage(
    name: QuestionnairePage.route,
    page: () => const QuestionnairePage(),
    binding: QuestionnaireBinding(),
  ),
];

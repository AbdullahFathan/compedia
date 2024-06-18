import 'package:get/get.dart';
import 'm_survey_binding.dart';
import 'm_survey_page.dart';

final mSurveyRoute = [
  GetPage(
    name: MSurveyPage.route,
    page: () => const MSurveyPage(),
    binding: MSurveyBinding(),
  ),
];

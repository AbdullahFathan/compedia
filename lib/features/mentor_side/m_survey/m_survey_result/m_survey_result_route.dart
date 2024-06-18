import 'package:get/get.dart';
import 'm_survey_result_binding.dart';
import 'm_survey_result_page.dart';

final mSurveyResultRoute = [
  GetPage(
    name: MSurveyResultPage.route,
    page: () => const MSurveyResultPage(),
    binding: MSurveyResultBinding(),
  ),
];

import 'package:get/get.dart';
import 'result_personal_binding.dart';
import 'result_personal_page.dart';

final resultPersonalRoute = [
  GetPage(
    name: ResultPersonalPage.route,
    page: () => const ResultPersonalPage(),
    binding: ResultPersonalBinding(),
  ),
];

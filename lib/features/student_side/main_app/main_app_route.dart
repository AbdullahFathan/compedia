import 'package:get/get.dart';
import 'main_app_binding.dart';
import 'main_app_page.dart';

final mainAppRoute = [
  GetPage(
    name: MainAppPage.route,
    page: () => const MainAppPage(),
    binding: MainAppBinding(),
  ),
];

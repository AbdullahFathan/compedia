import 'package:get/get.dart';
import 'm_main_app_binding.dart';
import 'm_main_app_page.dart';

final mMainAppRoute = [
  GetPage(
    name: MMainAppPage.route,
    page: () => const MMainAppPage(),
    binding: MMainAppBinding(),
  ),
];

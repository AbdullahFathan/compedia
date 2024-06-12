import 'package:get/get.dart';
import 'about_comunity_binding.dart';
import 'about_comunity_page.dart';

final aboutComunityRoute = [
  GetPage(
    name: AboutComunityPage.route,
    page: () => const AboutComunityPage(),
    binding: AboutComunityBinding(),
  ),
];

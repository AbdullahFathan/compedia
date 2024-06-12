import 'package:get/get.dart';
import 'topik_comunity_binding.dart';
import 'topik_comunity_page.dart';

final topikComunityRoute = [
  GetPage(
    name: TopikComunityPage.route,
    page: () => const TopikComunityPage(),
    binding: TopikComunityBinding(),
  ),
];

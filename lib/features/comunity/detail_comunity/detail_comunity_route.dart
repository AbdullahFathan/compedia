import 'package:get/get.dart';
import 'detail_comunity_binding.dart';
import 'detail_comunity_page.dart';

final detailComunityRoute = [
  GetPage(
    name: DetailComunityPage.route,
    page: () => const DetailComunityPage(),
    binding: DetailComunityBinding(),
  ),
];

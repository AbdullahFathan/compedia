import 'package:get/get.dart';
import 'detail_competition_binding.dart';
import 'detail_competition_page.dart';

final detailCompetitionRoute = [
  GetPage(
    name: DetailCompetitionPage.route,
    page: () => const DetailCompetitionPage(),
    binding: DetailCompetitionBinding(),
  ),
];

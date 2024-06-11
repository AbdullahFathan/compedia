import 'package:get/get.dart';
import 'detail_status_mentoring_binding.dart';
import 'detail_status_mentoring_page.dart';

final detailStatusMentoringRoute = [
  GetPage(
    name: DetailStatusMentoringPage.route,
    page: () => const DetailStatusMentoringPage(),
    binding: DetailStatusMentoringBinding(),
  ),
];

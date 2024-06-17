import 'package:get/get.dart';
import 'detail_mentor_binding.dart';
import 'detail_mentor_page.dart';

final detailMentorRoute = [
  GetPage(
    name: DetailMentorPage.route,
    page: () => const DetailMentorPage(),
    binding: DetailMentorBinding(),
  ),
];

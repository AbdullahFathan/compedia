import 'package:get/get.dart';
import 'm_detail_mentoring_binding.dart';
import 'm_detail_mentoring_page.dart';

final mDetailMentoringRoute = [
  GetPage(
    name: MDetailMentoringPage.route,
    page: () => const MDetailMentoringPage(),
    binding: MDetailMentoringBinding(),
  ),
];

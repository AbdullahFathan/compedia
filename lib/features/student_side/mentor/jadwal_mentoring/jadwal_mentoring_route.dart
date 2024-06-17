import 'package:get/get.dart';
import 'jadwal_mentoring_binding.dart';
import 'jadwal_mentoring_page.dart';

final jadwalMentoringRoute = [
  GetPage(
    name: JadwalMentoringPage.route,
    page: () => const JadwalMentoringPage(),
    binding: JadwalMentoringBinding(),
  ),
];

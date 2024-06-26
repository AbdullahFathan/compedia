import 'package:get/get.dart';
import 'm_jadwal_binding.dart';
import 'm_jadwal_page.dart';

final mJadwalRoute = [
  GetPage(
    name: MJadwalPage.route,
    page: () => const MJadwalPage(),
    binding: MJadwalBinding(),
  ),
];

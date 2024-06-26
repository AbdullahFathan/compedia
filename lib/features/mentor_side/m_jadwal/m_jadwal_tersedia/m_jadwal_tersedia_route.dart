import 'package:get/get.dart';
import 'm_jadwal_tersedia_binding.dart';
import 'm_jadwal_tersedia_page.dart';

final mJadwalTersediaRoute = [
  GetPage(
    name: MJadwalTersediaPage.route,
    page: () => const MJadwalTersediaPage(),
    binding: MJadwalTersediaBinding(),
  ),
];

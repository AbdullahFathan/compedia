import 'package:get/get.dart';
import 'm_jadwal_kaldaluwarsa_binding.dart';
import 'm_jadwal_kaldaluwarsa_page.dart';

final mJadwalKaldaluwarsaRoute = [
  GetPage(
    name: MJadwalKaldaluwarsaPage.route,
    page: () => const MJadwalKaldaluwarsaPage(),
    binding: MJadwalKaldaluwarsaBinding(),
  ),
];

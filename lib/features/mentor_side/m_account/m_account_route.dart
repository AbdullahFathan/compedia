import 'package:get/get.dart';
import 'm_account_binding.dart';
import 'm_account_page.dart';

final mAccountRoute = [
  GetPage(
    name: MAccountPage.route,
    page: () => const MAccountPage(),
    binding: MAccountBinding(),
  ),
];

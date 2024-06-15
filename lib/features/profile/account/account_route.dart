import 'package:get/get.dart';
import 'account_binding.dart';
import 'account_page.dart';

final accountRoute = [
  GetPage(
    name: AccountPage.route,
    page: () => const AccountPage(),
    binding: AccountBinding(),
  ),
];

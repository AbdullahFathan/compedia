import 'package:get/get.dart';
import 'register_binding.dart';
import 'register_page.dart';

final registerRoute = [
  GetPage(
    name: RegisterPage.route,
    page: () => const RegisterPage(),
    binding: RegisterBinding(),
  ),
];

import 'package:compedia/features/login/login_binding.dart';
import 'package:compedia/features/login/login_page.dart';
import 'package:get/get.dart';

final loginRoute = [
  GetPage(
    name: LoginPage.route,
    page: () => const LoginPage(),
    binding: LoginBinding(),
  )
];

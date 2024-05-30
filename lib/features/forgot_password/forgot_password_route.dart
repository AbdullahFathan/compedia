import 'package:get/get.dart';
import 'forgot_password_binding.dart';
import 'forgot_password_page.dart';

final forgotPasswordRoute = [
  GetPage(
    name: ForgotPasswordPage.route,
    page: () => const ForgotPasswordPage(),
    binding: ForgotPasswordBinding(),
  ),
];

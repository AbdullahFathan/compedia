import 'package:get/get.dart';
import 'm_onboarding_binding.dart';
import 'm_onboarding_page.dart';

final mOnboardingRoute = [
  GetPage(
    name: MOnboardingPage.route,
    page: () => const MOnboardingPage(),
    binding: MOnboardingBinding(),
  ),
];

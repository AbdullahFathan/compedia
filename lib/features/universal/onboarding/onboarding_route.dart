import 'package:get/get.dart';
import 'onboarding_binding.dart';
import 'onboarding_page.dart';

final onboardingRoute = [
  GetPage(
    name: OnboardingPage.route,
    page: () => const OnboardingPage(),
    binding: OnboardingBinding(),
  ),
];

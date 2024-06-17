import 'm_onboarding_controller.dart';
import 'package:get/get.dart';

class MOnboardingBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MOnboardingController>(() => MOnboardingController());
  }
}

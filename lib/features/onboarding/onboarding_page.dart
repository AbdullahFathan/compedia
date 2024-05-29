import 'package:compedia/config/themes/resources/app_color.dart';
import 'package:compedia/features/onboarding/models/onboarding.dart';
import 'package:compedia/features/onboarding/onboarding_controller.dart';

import 'package:compedia/utils/widget/image_load.dart';
import 'package:compedia/utils/widget/primary_button.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class OnboardingPage extends GetView<OnboardingController> {
  static const route = '/onboarding';
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Align(
                alignment: Alignment.topRight,
                child: InkWell(
                  onTap: () => controller.skipPage(),
                  child: Text(
                    'txt_btn_lewati'.tr,
                    style: Get.textTheme.bodyMedium!.copyWith(
                      fontSize: 15,
                      color: AppColor.neutral60,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: PageView.builder(
                controller: controller.pageController,
                itemCount: onboardingConstan.length,
                onPageChanged: (value) => controller.onPageChange(value),
                itemBuilder: (context, index) {
                  var item = onboardingConstan[index];
                  return Obx(
                    () => Container(
                      padding: const EdgeInsets.all(16),
                      margin: const EdgeInsets.only(
                        bottom: 16,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ImageLoad(src: item.image),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 16,
                            ),
                            child: Text(
                              item.title,
                              textAlign: TextAlign.center,
                              style: Get.textTheme.displayLarge!.copyWith(
                                fontSize: 22,
                                color: AppColor.primaryColor,
                                letterSpacing: 1.4,
                              ),
                            ),
                          ),
                          Text(
                            item.content,
                            textAlign: TextAlign.center,
                            style: Get.textTheme.bodySmall!.copyWith(
                              color: AppColor.neutral70,
                              fontSize: 14,
                              letterSpacing: 1,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 25),
                            child: DotsIndicator(
                              dotsCount: onboardingConstan.length,
                              position: controller.currIndex.value,
                              decorator: DotsDecorator(
                                size: const Size.square(10),
                                activeColor: AppColor.primaryColor,
                                color: AppColor.neutral50,
                                activeSize: const Size(40, 10.0),
                                activeShape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.0)),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 200,
                            child: PrimaryButton(
                              text: controller.currIndex.value ==
                                      onboardingConstan.length - 1
                                  ? "Mulai Sekarang!"
                                  : "Selanjutnya",
                              onPressed: () => controller.nextPage(),
                              fontSize: 16,
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

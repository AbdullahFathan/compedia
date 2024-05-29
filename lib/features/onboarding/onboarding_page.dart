import 'package:compedia/config/themes/resources/app_color.dart';
import 'package:compedia/features/onboarding/models/onboarding.dart';
import 'package:compedia/features/onboarding/onboarding_controller.dart';

import 'package:compedia/utils/widget/image_load.dart';
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
              child: Text(
                'txt_btn_lewati'.tr,
                style: Get.textTheme.bodyMedium!.copyWith(
                  fontSize: 15,
                  color: AppColor.neutral60,
                ),
              ),
            ),
          ),
          Expanded(
            child: PageView.builder(
              itemCount: onboardingConstan.length,
              itemBuilder: (context, index) {
                var item = onboardingConstan[index];
                return Container(
                  padding: const EdgeInsets.all(16),
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
                        ),
                      ),
                      Text(
                        item.content,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    ));
  }
}

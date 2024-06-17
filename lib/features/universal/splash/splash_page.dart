import 'package:compedia/config/gen/image_resources.dart';
import 'package:compedia/config/themes/resources/app_color.dart';
import 'package:compedia/features/universal/onboarding/onboarding_page.dart';
import 'package:compedia/utils/widget/image_load.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashPage extends StatefulWidget {
  static const route = '/splash';
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Future.delayed(
      const Duration(seconds: 2),
      () => Get.offNamed(
        OnboardingPage.route,
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ImageLoad(
              src: appImages.imgLogo.path,
              height: 55,
              width: 195,
            ),
            const SizedBox(
              height: 10,
            ),
            Text.rich(
              TextSpan(
                  text: 'txt_logo_welcome'.tr,
                  style: Get.textTheme.bodyMedium!.copyWith(
                    color: AppColor.primaryColor,
                    fontStyle: FontStyle.italic,
                  ),
                  children: [
                    TextSpan(
                      text: " Juara!",
                      style: Get.textTheme.bodyMedium!.copyWith(
                        color: AppColor.orangeColor,
                        fontStyle: FontStyle.italic,
                      ),
                    )
                  ]),
            )
          ],
        ),
      ),
    );
  }
}

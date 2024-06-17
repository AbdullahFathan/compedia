import 'package:compedia/config/themes/resources/app_color.dart';

import 'about_comunity_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AboutComunityPage extends GetView<AboutComunityController> {
  static const route = '/about/comunity';
  const AboutComunityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 12,
          horizontal: 16,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            Text(
              "Komunitas untuk teman-teman yang tertarik untuk sharing-sharing lomba bidang IT!😍 Dilarang untuk berbicara kasar dan melontarkan hal-hal yang bersifat melanggar SARA!\n\nKomunitas ini dibuat oleh tim Compedia ❤",
              style: Get.textTheme.bodySmall!.copyWith(
                color: AppColor.neutral80,
                fontSize: 14,
              ),
              textAlign: TextAlign.start,
            ),
          ],
        ),
      ),
    );
  }
}

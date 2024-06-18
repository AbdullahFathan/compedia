import 'package:compedia/config/gen/image_resources.dart';
import 'package:compedia/config/themes/resources/app_color.dart';
import 'package:compedia/features/mentor_side/m_main_app/m_main_app_page.dart';
import 'package:compedia/utils/widget/image_load.dart';
import 'package:compedia/utils/widget/primary_button.dart';

import 'm_survey_result_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MSurveyResultPage extends GetView<MSurveyResultController> {
  static const route = '/m/survey/result';
  const MSurveyResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      minimum: const EdgeInsets.all(16),
      child: Column(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ImageLoad(
                  src: appImages.imgQuestionDone.path,
                  height: 242,
                  width: 222,
                ),
                const SizedBox(
                  height: 12,
                ),
                Text(
                  "Selamat Datang Mentor, We Want You!",
                  style: Get.textTheme.bodyMedium!.copyWith(
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Text(
                  "Jangan lupa bagikan ke media sosialmu agar mentee dapat mengetahui bahwa kamu hadir pada platform kami",
                  textAlign: TextAlign.center,
                  style: Get.textTheme.bodySmall!.copyWith(
                    fontSize: 12,
                    color: AppColor.neutral80,
                    height: 1.5,
                  ),
                ),
              ],
            ),
          ),
          PrimaryButton(
              text: "Selanjutnya",
              onPressed: () => Get.offAllNamed(
                    MMainAppPage.route,
                  )),
          const SizedBox(
            height: 12,
          ),
        ],
      ),
    ));
  }
}

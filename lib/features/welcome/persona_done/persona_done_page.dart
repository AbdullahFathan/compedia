import 'package:compedia/config/gen/image_resources.dart';
import 'package:compedia/config/themes/resources/app_color.dart';
import 'package:compedia/features/main_app/main_app_page.dart';

import 'package:compedia/utils/widget/image_load.dart';
import 'package:compedia/utils/widget/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PersonaDonePage extends GetView {
  static const route = '/persona/done';
  const PersonaDonePage({super.key});

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
                  'txt_pp_title'.tr,
                  style: Get.textTheme.bodyMedium!.copyWith(
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Text(
                  'txt_pp_sub'.tr,
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
              text: 'txt_pp_btn'.tr,
              onPressed: () => Get.offAllNamed(MainAppPage.route)),
          const SizedBox(
            height: 12,
          ),
        ],
      ),
    ));
  }
}

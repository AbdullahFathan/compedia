import 'package:compedia/config/themes/resources/app_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MSurveyThirdWidget extends StatelessWidget {
  final TextEditingController controller;
  const MSurveyThirdWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 10,
        ),
        TextField(
          controller: controller,
          maxLines: 5,
          decoration: InputDecoration(
            hintText: "Masukkan list pencapaian Anda disini",
            border: Get.theme.inputDecorationTheme.border,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 5, left: 10),
          child: Text(
            "Anda juga dapat menuliskan pencapaian lain dalam bidang karir yang relate dengan lomba!",
            style: Get.textTheme.bodySmall!.copyWith(
              color: AppColor.neutral70,
              fontSize: 12,
            ),
          ),
        ),
      ],
    );
  }
}

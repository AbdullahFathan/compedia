import 'package:compedia/config/themes/resources/app_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MSurveyFourWidget extends StatelessWidget {
  final TextEditingController controllerFlied1;
  final TextEditingController controllerFlied2;
  const MSurveyFourWidget(
      {super.key,
      required this.controllerFlied1,
      required this.controllerFlied2});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 10,
        ),
        TextField(
          controller: controllerFlied1,
          decoration: InputDecoration(
            hintText: "Link Linkedin",
            border: Get.theme.inputDecorationTheme.border,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 5,
            left: 10,
            bottom: 10,
          ),
          child: Text(
            "Masukkan link Linkedinmu",
            style: Get.textTheme.bodySmall!.copyWith(
              color: AppColor.neutral70,
              fontSize: 12,
            ),
          ),
        ),
        TextField(
          controller: controllerFlied2,
          decoration: InputDecoration(
            hintText: "Link Instagram",
            border: Get.theme.inputDecorationTheme.border,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 5,
            left: 10,
            bottom: 10,
          ),
          child: Text(
            "Masukkan link instagrammu",
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

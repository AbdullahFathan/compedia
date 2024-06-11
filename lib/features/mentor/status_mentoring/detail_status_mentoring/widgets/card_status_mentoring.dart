import 'package:compedia/config/themes/resources/app_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CardStatusMentoring extends StatelessWidget {
  const CardStatusMentoring({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      width: double.infinity,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: AppColor.yellowColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        "Menunggu Persetujuan Mentor!",
        style: Get.textTheme.bodyMedium!.copyWith(
          color: AppColor.neutral100,
          fontSize: 14,
        ),
      ),
    );
  }
}

import 'package:compedia/config/themes/resources/app_color.dart';
import 'package:compedia/utils/widget/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ButtonDetailMentorSection extends StatelessWidget {
  const ButtonDetailMentorSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 12,
      ),
      width: double.infinity,
      decoration: const BoxDecoration(
        color: AppColor.whiteColor,
        boxShadow: [
          BoxShadow(
            color: Color(0x1A474042),
            offset: Offset(0, -4),
            blurRadius: 16,
          ),
        ],
      ),
      child: PrimaryButton(
        onPressed: () {},
        text: 'txt_btn_dm'.tr,
      ),
    );
  }
}

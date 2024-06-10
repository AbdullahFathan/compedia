import 'package:compedia/config/themes/resources/app_color.dart';
import 'package:compedia/utils/widget/primary_button.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class ButtonSection extends StatelessWidget {
  const ButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 8,
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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          PrimaryButton(
            onPressed: () {},
            text: 'txt_dc_btn_color'.tr,
          ),
          const SizedBox(
            height: 14,
          ),
          SizedBox(
            width: double.infinity,
            child: PrimaryButton.outlineVersion(
              text: 'txt_dc_btn_outline'.tr,
              onTap: () {},
            ),
          )
        ],
      ),
    );
  }
}

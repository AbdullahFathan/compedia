import 'package:compedia/config/themes/resources/app_color.dart';
import 'package:compedia/utils/widget/primary_button.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class ButtonSection extends StatelessWidget {
  const ButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
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
      child: Column(
        children: [
          PrimaryButton(
            onPressed: () {},
            text: 'Setejui',
          ).marginOnly(bottom: 8),
          SizedBox(
            width: double.infinity,
            child: PrimaryButton.outlineVersion(
              text: "Tolak",
              onTap: () {},
            ),
          )
        ],
      ),
    );
  }
}

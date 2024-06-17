import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:compedia/config/themes/resources/app_color.dart';
import 'package:compedia/utils/widget/primary_button.dart';

class HomeContentLayout extends StatelessWidget {
  final String title;
  final String subtitle;
  final Widget itemWidget;
  final String buttonText;
  final double heightList;

  final void Function()? buttonPress;
  const HomeContentLayout({
    super.key,
    required this.title,
    required this.subtitle,
    required this.itemWidget,
    required this.buttonText,
    required this.heightList,
    this.buttonPress,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Get.textTheme.displayLarge!.copyWith(
            fontSize: 22,
          ),
        ),
        const SizedBox(
          height: 4,
        ),
        Text(
          subtitle,
          style: Get.textTheme.displaySmall!.copyWith(
            fontSize: 14,
            color: AppColor.neutral70,
          ),
        ),
        SizedBox(
          height: heightList,
          child: itemWidget,
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          width: double.infinity,
          child: PrimaryButton.outlineVersion(
            text: buttonText,
            onTap: buttonPress,
          ),
        )
      ],
    );
  }
}

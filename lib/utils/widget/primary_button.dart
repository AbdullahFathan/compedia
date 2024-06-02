import 'package:flutter/material.dart';

import 'package:compedia/config/themes/resources/app_color.dart';
import 'package:get/get.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.height = 48,
    this.witdh = double.infinity,
    this.fontSize = 16,
    this.fontWeight,
    this.textColor,
    this.buttonColor,
    this.elevation = 0,
    this.radiusValue = 4,
    this.borderWidth = 1.5,
  });

  final double borderWidth;
  final Color? buttonColor;
  final double? elevation;
  final double? fontSize;
  final FontWeight? fontWeight;
  final double height;
  final void Function() onPressed;
  final double radiusValue;
  final String? text;
  final Color? textColor;
  final double witdh;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: witdh,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: elevation,
          padding: const EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 24,
          ),
          backgroundColor: buttonColor ?? AppColor.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radiusValue),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          text.toString(),
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                fontSize: fontSize,
                fontWeight: fontWeight,
                color: textColor ?? Colors.white,
              ),
        ),
      ),
    );
  }

  static Widget outlineVersion(
      {void Function()? onTap,
      String? text,
      Widget? child,
      double? textSize,
      Color? textColor}) {
    return OutlinedButton(
      onPressed: onTap,
      style: OutlinedButton.styleFrom(
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 24,
        ),
        fixedSize: const Size(double.infinity, 48),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
            side: const BorderSide(
              width: 10,
              color: AppColor.primaryColor,
            )),
      ),
      child: child ??
          Text(
            "$text",
            style: Get.textTheme.displayLarge!.copyWith(
              color: textColor ?? AppColor.primaryColor,
              fontSize: textSize ?? 14,
            ),
          ),
    );
  }
}

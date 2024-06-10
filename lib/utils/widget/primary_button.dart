import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:compedia/config/themes/resources/app_color.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
    this.borderWidth = 1.5,
    this.buttonColor,
    this.elevation = 0,
    this.fontSize = 16,
    this.fontWeight,
    this.height = 48,
    required this.onPressed,
    this.radiusValue = 4,
    required this.text,
    this.textColor,
    this.witdh = double.infinity,
    this.padingVertical = 10,
    this.padingHorizontal = 24,
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
  final double padingVertical;
  final double padingHorizontal;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: witdh,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: elevation,
          padding: EdgeInsets.symmetric(
            vertical: padingVertical,
            horizontal: padingHorizontal,
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
      double? height,
      Color? borderColor,
      Color? textColor}) {
    return OutlinedButton(
      onPressed: onTap,
      style: OutlinedButton.styleFrom(
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 24,
        ),
        fixedSize: Size(double.infinity, height ?? 48),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
            side: BorderSide(
              width: 10,
              color: borderColor ?? AppColor.primaryColor,
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

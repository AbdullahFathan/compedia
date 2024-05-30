import 'package:flutter/material.dart';
import 'package:compedia/config/themes/resources/app_color.dart';
import 'package:get/get.dart';

class InputDecorationStyle {
  static InputDecorationTheme inputDecoration() {
    return InputDecorationTheme(
      filled: true,
      fillColor: AppColor.whiteColor,
      contentPadding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: AppColor.bordeColor, width: 1),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: AppColor.bordeColor, width: 1),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide:
            BorderSide(color: AppColor.redColor.withOpacity(0.8), width: 1),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: AppColor.redColor, width: 1.4),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: AppColor.primaryColor, width: 1),
      ),
      labelStyle: const TextStyle(
        color: AppColor.blackColor,
      ),
      hintStyle: Get.textTheme.bodySmall!.copyWith(
        color: AppColor.neutral60,
        fontSize: 16,
      ),
    );
  }
}

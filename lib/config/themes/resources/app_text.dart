import 'package:flutter/material.dart';
import 'package:compedia/config/themes/resources/app_color.dart';

class TextClass {
  static TextTheme textTheme = const TextTheme(
    displayLarge: TextStyle(
      fontWeight: FontWeight.bold,
      color: AppColor.neutral100,
      fontSize: 18,
    ),
    bodyMedium: TextStyle(
      fontWeight: FontWeight.w500,
      color: AppColor.neutral100,
      fontSize: 14,
    ),
    bodySmall: TextStyle(
      fontWeight: FontWeight.w400,
      color: AppColor.neutral100,
      fontSize: 12,
    ),
  );
}

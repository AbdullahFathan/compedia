import 'package:compedia/config/themes/resources/app_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TextAreaQuestion extends StatelessWidget {
  final String title;
  final TextEditingController textEditingController;
  const TextAreaQuestion({
    super.key,
    required this.title,
    required this.textEditingController,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            title,
            textAlign: TextAlign.center,
            style: Get.textTheme.bodyMedium!.copyWith(
              fontSize: 16,
              height: 1.5,
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          TextField(
            controller: textEditingController,
            maxLines: 10,
            decoration: InputDecoration(
              border: Get.theme.inputDecorationTheme.border,
              hintText:
                  "Contoh penulisan: Lomba GEMASTIK XVI - UX Design - Juara 1 ",
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8, left: 8),
            child: Text(
              "Tuliskan “Belum Pernah Menang” jika kamu belum pernah menjuarai lomba sebelumnya",
              style: Get.textTheme.bodySmall!.copyWith(
                color: AppColor.neutral70,
                fontSize: 12,
              ),
            ),
          )
        ],
      ),
    );
  }
}

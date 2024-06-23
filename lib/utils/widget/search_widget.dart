import 'package:flutter/material.dart';

import 'package:compedia/config/themes/resources/app_color.dart';

class SearchWidget extends StatelessWidget {
  final String hint;
  final TextEditingController controller;
  final void Function(String) onSubmit;
  final bool isVisibel;
  const SearchWidget({
    super.key,
    required this.hint,
    required this.controller,
    required this.onSubmit,
    this.isVisibel = true,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Expanded(
          child: TextField(
            controller: controller,
            onSubmitted: onSubmit,
            decoration: InputDecoration(
              hintText: hint,
              contentPadding:
                  const EdgeInsets.only(left: 16, top: 8, bottom: 8),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(4),
                borderSide: const BorderSide(
                  width: 1,
                  color: AppColor.bordeColor,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(4),
                borderSide: const BorderSide(
                  width: 1,
                  color: AppColor.bordeColor,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        Visibility(
          visible: isVisibel,
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: AppColor.bordeColor,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
            child: IconButton(
              onPressed: () async {},
              icon: const Icon(
                Icons.tune,
                size: 32,
                color: AppColor.neutral60,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

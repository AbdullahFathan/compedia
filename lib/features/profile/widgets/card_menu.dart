import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:compedia/config/themes/resources/app_color.dart';
import 'package:compedia/models/profile_menu.dart';

class CardMenuWidget extends StatelessWidget {
  final ProfileMenu item;
  final int index;
  const CardMenuWidget({
    super.key,
    required this.item,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (index == 0) {
          print("ini index 1");
        } else {
          Get.toNamed(item.route);
        }
      },
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(12),
        margin: const EdgeInsets.only(bottom: 12),
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColor.whiteColor,
          border: Border.all(
            color: const Color(0xffE1DDDF),
            width: 1,
          ),
          boxShadow: const [
            BoxShadow(
              color: Color(0x1A353535),
              offset: Offset(0, 1),
              blurRadius: 4,
              spreadRadius: 1,
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                item.icon,
                const SizedBox(
                  width: 12,
                ),
                Text(
                  item.title,
                  style: Get.textTheme.bodyMedium!.copyWith(
                    fontSize: 14,
                  ),
                )
              ],
            ),
            Visibility(
              visible: index != 0,
              child: const Icon(
                Icons.arrow_forward_ios_sharp,
                size: 20,
              ),
            )
          ],
        ),
      ),
    );
  }
}

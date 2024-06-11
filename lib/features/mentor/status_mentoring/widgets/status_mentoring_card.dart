import 'package:compedia/config/themes/resources/app_color.dart';
import 'package:compedia/features/mentor/status_mentoring/detail_status_mentoring/detail_status_mentoring_page.dart';
import 'package:compedia/models/category.dart';
import 'package:compedia/utils/widget/category_chip.dart';
import 'package:compedia/utils/widget/image_load.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailMentoringCardWidget extends StatelessWidget {
  const DetailMentoringCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Get.toNamed(DetailStatusMentoringPage.route),
      child: Container(
        height: 160,
        width: 345,
        padding: const EdgeInsets.symmetric(
          vertical: 8,
          horizontal: 10,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: AppColor.bordeColor,
          ),
        ),
        child: Row(
          children: [
            ImageLoad(
              src:
                  "https://images.unsplash.com/photo-1605993439219-9d09d2020fa5?q=80&w=2787&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
              height: 150,
              width: 120,
              borderRadius: BorderRadius.circular(12),
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                    child: Text(
                  "Ariel Tantum",
                  style: Get.textTheme.bodyMedium!.copyWith(
                    fontSize: 14,
                  ),
                )),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Text(
                    "Mobile Developer",
                    style: Get.textTheme.bodyMedium!
                        .copyWith(fontSize: 14, color: AppColor.primaryColor),
                  ),
                ),
                CategoryChipWidget(dataList: dummyLombaCategory),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Menunggu Persetujuan Mentor",
                  style: Get.textTheme.bodyMedium!.copyWith(
                    fontSize: 14,
                    color: AppColor.yellowColor,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

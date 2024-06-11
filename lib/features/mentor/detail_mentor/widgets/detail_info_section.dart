import 'package:compedia/config/themes/resources/app_color.dart';
import 'package:compedia/models/category.dart';
import 'package:compedia/utils/widget/category_chip.dart';
import 'package:compedia/utils/widget/image_load.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailInfoMentorSection extends StatelessWidget {
  const DetailInfoMentorSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      children: [
        const SizedBox(
          height: 20,
        ),
        Center(
          child: ImageLoad(
            src:
                "https://images.unsplash.com/photo-1605993439219-9d09d2020fa5?q=80&w=2787&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
            height: 285,
            width: 200,
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20, bottom: 10),
          child: CategoryChipWidget(
            dataList: dummyLombaCategory,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Text(
            "Ariel Tantum",
            style: Get.textTheme.displayLarge!.copyWith(
              fontSize: 18,
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Mobile Developer",
              style: Get.textTheme.bodySmall!.copyWith(
                color: AppColor.neutral70,
                fontSize: 16,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.bookmark_outline,
                color: AppColor.secondaryColor,
              ),
            ),
          ],
        ),
        Text(
          "Rp 20.000/Sesi",
          style: Get.textTheme.displayLarge!
              .copyWith(fontSize: 16, color: AppColor.primary70),
        ),
        customDivider(),
        Text(
          'txt_dm_sosmed'.tr,
          style: Get.textTheme.displayLarge!.copyWith(
            fontSize: 14,
            height: 3,
          ),
        ),
        Row(
          children: [
            Text(
              "Instagram",
              style: Get.textTheme.bodyMedium!
                  .copyWith(color: AppColor.secondaryColor, fontSize: 14),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Text(
                "Linkedin",
                style: Get.textTheme.bodyMedium!
                    .copyWith(color: AppColor.secondaryColor, fontSize: 14),
              ),
            ),
            Text(
              "PDDIKTI",
              style: Get.textTheme.bodyMedium!
                  .copyWith(color: AppColor.secondaryColor, fontSize: 14),
            )
          ],
        ),
        customDivider(),
        Text(
          'txt_dm_pencapian'.tr,
          style: Get.textTheme.displayLarge!.copyWith(
            fontSize: 14,
            height: 3,
          ),
        ),
        ListView.builder(
          itemCount: 3,
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return Text.rich(
              TextSpan(
                children: [
                  const WidgetSpan(
                    alignment: PlaceholderAlignment.middle,
                    child: Icon(
                      Icons.circle,
                      size: 5,
                      color: AppColor.neutral80,
                    ),
                  ),
                  const WidgetSpan(
                      child: SizedBox(
                    width: 10,
                  )),
                  TextSpan(
                    text: "Juara 1 Software Development",
                    style: Get.textTheme.bodySmall!.copyWith(
                      color: AppColor.neutral80,
                      fontSize: 14,
                    ),
                  )
                ],
              ),
            );
          },
        ),
        customDivider(),
        Text(
          'txt_dm_cakupan'.tr,
          style: Get.textTheme.displayLarge!.copyWith(
            fontSize: 14,
            height: 3,
          ),
        ),
        CategoryChipWidget(
          dataList: dummyMentorCategory,
        ),
        customDivider(),
        Text(
          'txt_dm_tnc'.tr,
          style: Get.textTheme.displayLarge!.copyWith(
            fontSize: 14,
            height: 3,
          ),
        ),
        ListView.builder(
          itemCount: 3,
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return Text.rich(
              TextSpan(
                children: [
                  const WidgetSpan(
                    alignment: PlaceholderAlignment.middle,
                    child: Icon(
                      Icons.circle,
                      size: 5,
                      color: AppColor.neutral80,
                    ),
                  ),
                  const WidgetSpan(
                      child: SizedBox(
                    width: 10,
                  )),
                  TextSpan(
                    text: "Hanya menerima mentoring bersifat online",
                    style: Get.textTheme.bodySmall!.copyWith(
                      color: AppColor.neutral80,
                      fontSize: 14,
                    ),
                  )
                ],
              ),
            );
          },
        ),
        const SizedBox(
          height: 100,
        ),
      ],
    );
  }

  Widget customDivider() {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Divider(),
    );
  }
}

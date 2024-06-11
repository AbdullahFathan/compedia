import 'package:compedia/config/gen/image_resources.dart';
import 'package:compedia/config/themes/resources/app_color.dart';
import 'package:compedia/features/home/widgets/content_layout.dart';
import 'package:compedia/models/category.dart';
import 'package:compedia/utils/widget/category_chip.dart';
import 'package:compedia/utils/widget/image_load.dart';
import 'package:compedia/utils/widget/mentor_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class DetailInfoSection extends StatelessWidget {
  const DetailInfoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      children: [
        const SizedBox(
          height: 20,
        ),
        ImageLoad(
          src: appImages.imgPosterLomba.path,
          height: 400,
          width: 300,
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 20,
            bottom: 12,
          ),
          child: CategoryChipWidget(
            dataList: dummyLombaCategory,
          ),
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              child: Text(
                "Hology Competition National Brawijaya 2022",
                style: Get.textTheme.displayLarge!.copyWith(
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Universitas Brawijaya",
                style: Get.textTheme.displayMedium!.copyWith(
                  color: AppColor.neutral70,
                  fontSize: 16,
                ),
              ),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.bookmark_outline,
                    color: AppColor.primary70,
                  ))
            ],
          ),
        ),
        Text(
          "Rp100.000",
          style: Get.textTheme.displayMedium!.copyWith(
            color: AppColor.primary70,
            fontSize: 16,
          ),
        ),
        customDivider(),
        Text(
          'txt_regis_batas'.tr,
          style: Get.textTheme.displayLarge!.copyWith(
            fontSize: 14,
            height: 3,
          ),
        ),
        Text(
          "20 June 2024",
          style: Get.textTheme.displayLarge!.copyWith(
            fontSize: 14,
            color: AppColor.secondaryColor,
          ),
        ),
        customDivider(),
        Text(
          'txt_dc_metode'.tr,
          style: Get.textTheme.displayLarge!.copyWith(fontSize: 14, height: 3),
        ),
        Text(
          "Hybrid - Kota Malang",
          style: Get.textTheme.displayLarge!.copyWith(
            fontSize: 14,
            color: AppColor.secondaryColor,
          ),
        ),
        customDivider(),
        Text(
          'txt_dc_publikasi'.tr,
          style: Get.textTheme.displayLarge!.copyWith(fontSize: 14, height: 3),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Hology Team",
              style: Get.textTheme.displayLarge!.copyWith(
                fontSize: 14,
                color: AppColor.secondaryColor,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const FaIcon(
                FontAwesomeIcons.instagram,
                color: AppColor.secondaryColor,
              ),
            ),
          ],
        ),
        customDivider(),
        Text(
          'txt_dc_deskripsi'.tr,
          style: Get.textTheme.displayLarge!.copyWith(fontSize: 14, height: 3),
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Flexible(
              child: Text(
                "ashdajsdjsadhjsahdsdjashdkjashdjhasdasd ajsdh akjshdakj dajsdh akjshdjkuedhaudai ",
                style: Get.textTheme.displayLarge!.copyWith(
                  fontSize: 14,
                  color: AppColor.secondaryColor,
                ),
              ),
            ),
          ],
        ),
        customDivider(),
        Text(
          'txt_dc_guide'.tr,
          style: Get.textTheme.displayLarge!.copyWith(fontSize: 14, height: 3),
        ),
        Text(
          "Link GuideBook Lomba",
          style: Get.textTheme.displayLarge!.copyWith(
              fontSize: 14,
              color: AppColor.secondaryColor,
              decoration: TextDecoration.underline,
              decorationColor: AppColor.secondaryColor),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 25),
          child: HomeContentLayout(
            title: 'txt_mentor_title'.tr,
            subtitle: 'txt_dc_mentor'.tr,
            buttonPress: () {},
            buttonText: 'txt_btn_mentor_lain'.tr,
            heightList: 200,
            itemWidget: ListView.separated(
              itemCount: 5,
              padding: const EdgeInsets.symmetric(vertical: 16),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) => const SizedBox(width: 30),
              itemBuilder: (context, index) {
                return const MentorCardWidget();
              },
            ),
          ),
        ),
        const SizedBox(
          height: 180,
        )
      ],
    );
  }

  Widget customDivider() {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 12),
      child: Divider(),
    );
  }
}

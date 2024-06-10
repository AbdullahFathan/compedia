import 'package:compedia/config/gen/image_resources.dart';
import 'package:compedia/config/themes/resources/app_color.dart';
import 'package:compedia/utils/widget/image_load.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CompetionCardWidget extends StatelessWidget {
  const CompetionCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 145,
      width: 350,
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
            src: appImages.imgPosterLomba.path,
            height: 170,
            width: 120,
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 27,
                  child: ListView.separated(
                    itemCount: 1,
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Material(
                        shape: const StadiumBorder(),
                        color: AppColor.primary50,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 6,
                          ),
                          child: Text(
                            "IT",
                            style: Get.textTheme.bodyMedium!.copyWith(
                              color: AppColor.primary70,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (context, index) => const SizedBox(
                      width: 8,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Flexible(
                        child: Text(
                          "Kompetisi UX Challenges Jawara 2022",
                          style: Get.textTheme.displayLarge!.copyWith(
                            fontSize: 14,
                            height: 1.5,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.calendar_today_outlined,
                      color: AppColor.orangeColor,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 4, right: 8),
                      child: Text(
                        "20 Juli 2024",
                        style: Get.textTheme.bodyMedium!.copyWith(
                          color: AppColor.orangeColor,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    const Icon(
                      Icons.location_on_outlined,
                      color: AppColor.orangeColor,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 4, right: 4),
                      child: Text("Hybrid",
                          style: Get.textTheme.bodyMedium!.copyWith(
                            color: AppColor.orangeColor,
                            fontSize: 12,
                          )),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 10,
                    bottom: 14,
                  ),
                  child: Text(
                    "Universitas Brawijaya",
                    style: Get.textTheme.bodyMedium!.copyWith(
                      color: AppColor.neutral70,
                      fontSize: 14,
                    ),
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Rp 100.000",
                      style: Get.textTheme.bodyMedium!.copyWith(
                        color: AppColor.primary70,
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      "30 Hari Lagi",
                      style: Get.textTheme.bodyMedium!.copyWith(
                        color: AppColor.greenColor,
                        fontSize: 14,
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

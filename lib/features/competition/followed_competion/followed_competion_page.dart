import 'package:compedia/config/themes/resources/app_color.dart';
import 'package:compedia/utils/widget/competion_card.dart';
import 'package:compedia/utils/widget/search_widget.dart';

import 'followed_competion_controller.dart';
import 'package:compedia/utils/widget/state_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FollowedCompetionPage extends GetView<FollowedCompetionController> {
  static const route = '/followed/competion';
  const FollowedCompetionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => RefreshIndicator(
        onRefresh: () => controller.loadData(),
        child: StateHelperWidget(
          isLoading: controller.isLoading,
          isEmpty: controller.isEmpty,
          isEror: controller.isEror,
          body: Padding(
            padding: const EdgeInsets.only(
              top: 20,
              left: 16,
              right: 16,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Kompetisi yang Kamu Ikuti",
                  style: Get.textTheme.displayLarge!.copyWith(
                    fontSize: 22,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 4, bottom: 12),
                  child: Text(
                    "Berikut list dari lomba-lomba yang kamu ikuti saat ini!",
                    style: Get.textTheme.bodySmall!.copyWith(
                      color: AppColor.neutral70,
                      fontSize: 14,
                    ),
                  ),
                ),
                SearchWidget(
                  hint: "Cari Kompentisi Disini",
                  controller: TextEditingController(),
                  onSubmit: (value) {},
                ),
                Expanded(
                  child: ListView.separated(
                    itemCount: 5,
                    padding: const EdgeInsets.only(
                      top: 16,
                      bottom: 8,
                    ),
                    separatorBuilder: (context, index) =>
                        const SizedBox(height: 20),
                    itemBuilder: (context, index) {
                      return const CompetionCardWidget();
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

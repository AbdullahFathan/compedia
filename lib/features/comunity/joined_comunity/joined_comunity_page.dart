import 'package:compedia/config/themes/resources/app_color.dart';
import 'package:compedia/utils/widget/empty_state_widget.dart';

import 'joined_comunity_controller.dart';
import 'package:compedia/utils/widget/state_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class JoinedComunityPage extends GetView<JoinedComunityController> {
  static const route = '/joined/comunity';
  const JoinedComunityPage({super.key});

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
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Komunitas Tergabung",
                  style: Get.textTheme.displayLarge!.copyWith(
                    fontSize: 22,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 4, bottom: 12),
                  child: Text(
                    "Berikut list komunitas yang telah kamu telah tergabung di dalamnya untuk berbagi ke sesama!",
                    style: Get.textTheme.bodySmall!.copyWith(
                      color: AppColor.neutral70,
                      fontSize: 14,
                    ),
                  ),
                ),
                const Expanded(
                  child: Center(
                    child: EmptyStateWidget(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

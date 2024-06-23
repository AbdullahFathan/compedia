import 'package:compedia/config/themes/resources/app_color.dart';
import 'package:compedia/utils/widget/m_mentoring_card.dart';
import 'package:compedia/utils/widget/search_widget.dart';

import 'm_menoting_disejutui_controller.dart';
import 'package:compedia/utils/widget/state_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MMenotingDisejutuiPage extends GetView<MMenotingDisejutuiController> {
  static const route = '/m/menoting/disejutui';
  const MMenotingDisejutuiPage({super.key});

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
                  "Mentoring Disetujui",
                  style: Get.textTheme.displayLarge!.copyWith(
                    fontSize: 22,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 4, bottom: 12),
                  child: Text(
                    "Berikut list mentoring mentee yang telah Anda setujui, Persiapkan dan Berikan yang terbaik!",
                    style: Get.textTheme.bodySmall!.copyWith(
                      color: AppColor.neutral70,
                      fontSize: 14,
                    ),
                  ),
                ),
                SearchWidget(
                  hint: "Cari Konteks Pembahasan Disini",
                  controller: TextEditingController(),
                  onSubmit: (value) {},
                  isVisibel: false,
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
                      return const MMentoringCardWidget(
                        title: "Seno MarSeno",
                        date: "Senin 12 June 2024",
                        time: "09:00-10:00 WIB",
                        detail:
                            "Terkait lomba UI/UX di Gemastik, tim kami masi stuck untuk ngedefine problemnya kak, kayak masih kurang keliatan urgensi dari masalahnya",
                        borderColor: AppColor.secondaryColor,
                      );
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

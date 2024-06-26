import 'package:compedia/config/themes/resources/app_color.dart';
import 'package:compedia/utils/widget/m_mentoring_card.dart';
import 'package:compedia/utils/widget/primary_button.dart';

import 'm_jadwal_tersedia_controller.dart';
import 'package:compedia/utils/widget/state_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MJadwalTersediaPage extends GetView<MJadwalTersediaController> {
  static const route = '/m/jadwal/tersedia';
  const MJadwalTersediaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => RefreshIndicator(
          onRefresh: () => controller.loadData(),
          child: StateHelperWidget(
            isLoading: controller.isLoading,
            isEmpty: controller.isEmpty,
            isEror: controller.isEror,
            body: ListView(
              padding: const EdgeInsets.symmetric(
                vertical: 20,
                horizontal: 16,
              ),
              children: [
                Text(
                  "Jadwal Yang Masih Tersedia",
                  style: Get.textTheme.displayLarge!.copyWith(
                    fontSize: 22,
                    height: 2,
                  ),
                ),
                Text(
                  "Berikut list jadwal mentoringmu yang masih tersedia!",
                  style: Get.textTheme.bodySmall!.copyWith(
                    color: AppColor.neutral70,
                    fontSize: 14,
                    height: 2,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: PrimaryButton(
                    onPressed: () {},
                    text: "+ Tambah Jadwa",
                  ),
                ),
                ListView.separated(
                  itemCount: 3,
                  padding: const EdgeInsets.only(top: 30),
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  separatorBuilder: (context, index) => const SizedBox(
                    height: 10,
                  ),
                  itemBuilder: (context, index) {
                    return MMentoringCardWidget.scheduleType(
                      borderColor: AppColor.greenColor,
                      date: "Senin, 19 Juni 2024",
                      time: "09:00-10:00 WIB",
                    );
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

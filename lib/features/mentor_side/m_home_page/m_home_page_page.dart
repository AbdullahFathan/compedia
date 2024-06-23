import 'package:compedia/config/themes/resources/app_color.dart';
import 'package:compedia/features/student_side/home/widgets/content_layout.dart';
import 'package:compedia/utils/widget/competion_card.dart';
import 'package:compedia/utils/widget/m_mentoring_card.dart';
import 'package:compedia/utils/widget/primary_button.dart';

import 'm_home_page_controller.dart';
import 'package:compedia/utils/widget/state_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MHomePagePage extends GetView<MHomePageController> {
  static const route = '/m/home/page';
  const MHomePagePage({super.key});

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
            body: SafeArea(
              minimum: const EdgeInsets.all(16),
              child: ListView(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Hai, Fathan",
                        style: Get.textTheme.displayLarge!.copyWith(
                          fontSize: 22,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.notifications_outlined,
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Container(
                        height: 95,
                        padding: const EdgeInsets.symmetric(
                          vertical: 8,
                          horizontal: 12,
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              color: AppColor.secondaryColor,
                            )),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Lengkapi informasi berikut\nuntuk memulai mentoringmu",
                              style: Get.textTheme.bodyMedium!.copyWith(
                                color: AppColor.secondaryColor,
                              ),
                            ),
                            PrimaryButton(
                              text: "Isi Sekarang",
                              onPressed: () {},
                              height: 45,
                              witdh: 120,
                              buttonColor: AppColor.secondaryColor,
                              padingHorizontal: 8,
                              padingVertical: 12,
                            )
                          ],
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    child: HomeContentLayout(
                      title: "Mentoring yang Akan Datang",
                      subtitle: "",
                      buttonPress: () {},
                      buttonText: "Lihat Selengkapnya",
                      heightList: 180,
                      itemWidget: ListView.separated(
                        itemCount: 5,
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        scrollDirection: Axis.horizontal,
                        separatorBuilder: (context, index) =>
                            const SizedBox(width: 30),
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
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    child: HomeContentLayout(
                      title: "Mentoring yang Menunggu Persetujuanmu",
                      subtitle: "",
                      buttonPress: () {},
                      buttonText: "Lihat Selengkapnya",
                      heightList: 180,
                      itemWidget: ListView.separated(
                        itemCount: 5,
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        scrollDirection: Axis.horizontal,
                        separatorBuilder: (context, index) =>
                            const SizedBox(width: 30),
                        itemBuilder: (context, index) {
                          return const MMentoringCardWidget(
                            title: "Seno MarSeno",
                            date: "Senin 12 June 2024",
                            time: "09:00-10:00 WIB",
                            detail:
                                "Terkait lomba UI/UX di Gemastik, tim kami masi stuck untuk ngedefine problemnya kak, kayak masih kurang keliatan urgensi dari masalahnya",
                            borderColor: AppColor.yellowColor,
                          );
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    child: HomeContentLayout(
                      title: "Mentoring yang Masih Tersedia",
                      subtitle: "",
                      buttonPress: () {},
                      buttonText: "Lihat Selengkapnya",
                      heightList: 250,
                      itemWidget: ListView.separated(
                        itemCount: 5,
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        scrollDirection: Axis.vertical,
                        separatorBuilder: (context, index) =>
                            const SizedBox(height: 20),
                        itemBuilder: (context, index) {
                          return MMentoringCardWidget.scheduleType(
                            borderColor: AppColor.greenColor,
                            date: "Senin, 13 June 2024",
                            time: "09:00 - 10:00 WIB",
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

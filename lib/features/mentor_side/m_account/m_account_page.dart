import 'package:compedia/config/themes/resources/app_color.dart';
import 'package:compedia/features/student_side/profile/widgets/card_menu.dart';
import 'package:compedia/utils/widget/primary_button.dart';

import 'm_account_controller.dart';
import 'package:compedia/utils/widget/state_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MAccountPage extends GetView<MAccountController> {
  static const route = '/m/account';
  const MAccountPage({super.key});

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
              minimum: const EdgeInsets.only(bottom: 20),
              child: ListView(
                children: [
                  Container(
                    height: 100,
                    padding: const EdgeInsets.all(16),
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: AppColor.whiteColor,
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x26000000),
                          offset: Offset(0, 3),
                          blurRadius: 8,
                          spreadRadius: -1,
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Fathan",
                          style: Get.textTheme.bodyMedium!.copyWith(
                            fontSize: 16,
                            height: 2.5,
                          ),
                        ),
                        Text(
                          "Universitas Brawijaya",
                          style: Get.textTheme.bodyMedium!.copyWith(
                            color: AppColor.primaryColor,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 16,
                      bottom: 4,
                      top: 20,
                    ),
                    child: Text(
                      "Dashboard Mentoring",
                      style: Get.textTheme.displayLarge!.copyWith(
                        fontSize: 22,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 16,
                      bottom: 12,
                    ),
                    child: Text(
                      "Berikut jumlah kontribusi mentoringmu pada platform compedia! Bagikan di sosial mediamu!",
                      style: Get.textTheme.bodyMedium!.copyWith(
                        color: AppColor.neutral70,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  GridView.builder(
                    itemCount: controller.dashboardData.length,
                    shrinkWrap: true,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 14,
                    ),
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 40,
                            mainAxisSpacing: 20,
                            childAspectRatio: 1.2),
                    itemBuilder: (context, index) {
                      var item = controller.dashboardData[index];
                      return Container(
                        height: 135,
                        width: 145,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: AppColor.whiteColor,
                          boxShadow: const [
                            BoxShadow(
                              color: Color(0x1A353535),
                              offset: Offset(0, 1),
                              blurRadius: 4,
                              spreadRadius: 1,
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "${item['icon']}",
                              style: Get.textTheme.bodyMedium!.copyWith(
                                fontSize: 28,
                              ),
                            ),
                            Text(
                              "8+ ${item['Title']}",
                              style: Get.textTheme.displayLarge!
                                  .copyWith(fontSize: 14, height: 2),
                            ),
                            Text(
                              "${item['sub']}",
                              textAlign: TextAlign.center,
                              style: Get.textTheme.bodySmall!.copyWith(
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 16,
                      bottom: 12,
                    ),
                    child: Text(
                      "Pengaturan Saya",
                      style: Get.textTheme.displayLarge!.copyWith(
                        fontSize: 22,
                      ),
                    ),
                  ),
                  ListView.separated(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    padding: const EdgeInsets.all(16),
                    itemCount: controller.menuData.length,
                    itemBuilder: (context, index) {
                      var item = controller.menuData[index];
                      return CardMenuWidget(
                        item: item,
                        index: index,
                      );
                    },
                    separatorBuilder: (context, index) => const SizedBox(
                      height: 6,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 5,
                      bottom: 20,
                      left: 16,
                      right: 16,
                    ),
                    child: PrimaryButton(
                      onPressed: () {},
                      text: "Keluar",
                      buttonColor: AppColor.redColor,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:compedia/config/themes/resources/app_color.dart';
import 'package:compedia/features/student_side/profile/widgets/card_menu.dart';
import 'package:compedia/utils/widget/primary_button.dart';

import 'profile_controller.dart';
import 'package:compedia/utils/widget/state_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfilePage extends GetView<ProfileController> {
  static const route = '/profile';
  const ProfilePage({super.key});

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
                          offset: Offset(0, 3), // Mengatur offset bayangan
                          blurRadius: 8,
                          spreadRadius: -1, // Mengatur spread radius negatif
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Vinncent Alexander Wong",
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
                  Container(
                    margin: const EdgeInsets.all(16),
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: AppColor.primary60,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Persona: Tikus Pemberani",
                          style: Get.textTheme.displayLarge!.copyWith(
                            color: AppColor.whiteColor,
                            fontSize: 14,
                            height: 2.5,
                          ),
                        ),
                        Text.rich(
                          TextSpan(
                            children: [
                              const WidgetSpan(
                                alignment: PlaceholderAlignment.middle,
                                child: Icon(
                                  Icons.circle,
                                  size: 5,
                                  color: AppColor.whiteColor,
                                ),
                              ),
                              const WidgetSpan(
                                  child: SizedBox(
                                width: 10,
                              )),
                              TextSpan(
                                text:
                                    "Ikuti lomba di tingkat regional - nasional",
                                style: Get.textTheme.bodyMedium!.copyWith(
                                  color: AppColor.whiteColor,
                                  fontSize: 12,
                                ),
                              )
                            ],
                          ),
                        ),
                        Text.rich(
                          TextSpan(
                            children: [
                              const WidgetSpan(
                                alignment: PlaceholderAlignment.middle,
                                child: Icon(
                                  Icons.circle,
                                  size: 5,
                                  color: AppColor.whiteColor,
                                ),
                              ),
                              const WidgetSpan(
                                  child: SizedBox(
                                width: 10,
                              )),
                              TextSpan(
                                text: "Temukan mentor yang newbie friendly",
                                style: Get.textTheme.bodyMedium!.copyWith(
                                  color: AppColor.whiteColor,
                                  fontSize: 12,
                                ),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        PrimaryButton(
                          onPressed: () {},
                          text: "Lihat Detail Persona",
                          textColor: AppColor.primaryColor,
                          buttonColor: AppColor.whiteColor,
                        ),
                      ],
                    ),
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

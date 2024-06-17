import 'package:compedia/config/themes/resources/app_color.dart';
import 'package:compedia/features/home/widgets/content_layout.dart';
import 'package:compedia/features/personal_question/personal_question_page.dart';
import 'package:compedia/utils/widget/competion_card.dart';
import 'package:compedia/utils/widget/comunity_card.dart';
import 'package:compedia/utils/widget/mentor_card.dart';
import 'package:compedia/utils/widget/primary_button.dart';

import 'home_controller.dart';
import 'package:compedia/utils/widget/state_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends GetView<HomeController> {
  static const route = '/home';
  const HomePage({super.key});

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
                    child: PrimaryButton.outlineVersion(
                        height: 90,
                        borderColor: AppColor.secondaryColor,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'txt_gabung_mentor'.tr,
                              style: Get.textTheme.bodyMedium!.copyWith(
                                color: AppColor.secondaryColor,
                              ),
                            ),
                            PrimaryButton(
                              text: 'txt_btn_program'.tr,
                              onPressed: () =>
                                  Get.toNamed(PersonalQuestionPage.route),
                              height: 45,
                              witdh: 150,
                              buttonColor: AppColor.secondaryColor,
                              padingHorizontal: 8,
                              padingVertical: 12,
                            )
                          ],
                        )),
                  ),

                  //Competion Section
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    child: HomeContentLayout(
                      title: 'txt_lomba_title'.tr,
                      subtitle: 'txt_lomba_sub'.tr,
                      buttonPress: () {},
                      buttonText: 'txt_btn_lomba_lain'.tr,
                      heightList: 250,
                      itemWidget: ListView.separated(
                        itemCount: 5,
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        scrollDirection: Axis.horizontal,
                        separatorBuilder: (context, index) =>
                            const SizedBox(width: 30),
                        itemBuilder: (context, index) {
                          return const CompetionCardWidget();
                        },
                      ),
                    ),
                  ),

                  //Mentor Section
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    child: HomeContentLayout(
                      title: 'txt_mentor_title'.tr,
                      subtitle: 'txt_mentor_sub'.tr,
                      buttonPress: () {},
                      buttonText: 'txt_btn_mentor_lain'.tr,
                      heightList: 200,
                      itemWidget: ListView.separated(
                        itemCount: 5,
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        scrollDirection: Axis.horizontal,
                        separatorBuilder: (context, index) =>
                            const SizedBox(width: 30),
                        itemBuilder: (context, index) {
                          return const MentorCardWidget();
                        },
                      ),
                    ),
                  ),

                  //Comunity Section
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    child: HomeContentLayout(
                      title: 'txt_komunitas_title'.tr,
                      subtitle: 'txt_kominitas_sub'.tr,
                      buttonPress: () {},
                      buttonText: 'txt_btn_komunitas_lain'.tr,
                      heightList: 200,
                      itemWidget: ListView.separated(
                        itemCount: 5,
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        scrollDirection: Axis.horizontal,
                        separatorBuilder: (context, index) =>
                            const SizedBox(width: 30),
                        itemBuilder: (context, index) {
                          return const ComunintyCard();
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

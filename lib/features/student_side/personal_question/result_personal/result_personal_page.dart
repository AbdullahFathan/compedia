import 'package:compedia/config/themes/resources/app_color.dart';
import 'package:compedia/features/student_side/main_app/main_app_page.dart';
import 'package:compedia/features/student_side/personal_question/personal_question_page.dart';
import 'package:compedia/utils/widget/primary_button.dart';

import 'result_personal_controller.dart';

import 'package:compedia/utils/widget/state_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResultPersonalPage extends GetView<ResultPersonalController> {
  static const route = '/result/personal';
  const ResultPersonalPage({super.key});

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
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Center(
                      child: Text(
                        "🐀",
                        style: TextStyle(
                          fontSize: 60,
                        ),
                      ),
                    ),
                    Text(
                      "Personamu Adalah Seorang Tikus, cit cit cit",
                      style: Get.textTheme.bodyMedium!
                          .copyWith(fontSize: 16, height: 2.5),
                    ),
                    Expanded(
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.only(
                            top: 20,
                            left: 40,
                            right: 40,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Penjelasan",
                                style: Get.textTheme.bodyMedium!.copyWith(
                                  fontSize: 12,
                                  height: 4,
                                ),
                              ),
                              Text(
                                "Kamu baru saja memulai perjalanan dalam dunia perlombaan sehingga  diperlukan rasa penasaran untuk mengeksplorasi berbagai peluang dan mengembangkan keterampilan baru ❤",
                                style: Get.textTheme.bodySmall!.copyWith(
                                  fontSize: 12,
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.symmetric(vertical: 5),
                                child: Divider(),
                              ),
                              Text(
                                "Rekomendasi Tipe & Strategi Lomba",
                                style: Get.textTheme.bodyMedium!.copyWith(
                                  fontSize: 12,
                                  height: 4,
                                ),
                              ),
                              ListView.builder(
                                itemCount: 3,
                                physics: const NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                itemBuilder: (context, index) {
                                  return Text.rich(
                                    TextSpan(
                                      children: [
                                        const WidgetSpan(
                                          alignment:
                                              PlaceholderAlignment.middle,
                                          child: Icon(
                                            Icons.circle,
                                            size: 5,
                                            color: AppColor.neutral80,
                                          ),
                                        ),
                                        const WidgetSpan(
                                            child: SizedBox(
                                          width: 10,
                                        )),
                                        TextSpan(
                                          text:
                                              "Ikuti lomba dengan pengalaman berjalannya masih kurang dari 2 tahun",
                                          style:
                                              Get.textTheme.bodySmall!.copyWith(
                                            fontSize: 12,
                                          ),
                                        )
                                      ],
                                    ),
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 130,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 12,
                      ),
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        color: AppColor.whiteColor,
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x1A474042),
                            offset: Offset(0, -4),
                            blurRadius: 16,
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          PrimaryButton(
                            onPressed: () => Get.offAllNamed(
                              MainAppPage.route,
                            ),
                            text: "Temukan Lomba Sesuai Persona",
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          SizedBox(
                            width: double.infinity,
                            child: PrimaryButton.outlineVersion(
                              text: "Ulangi Tes Lagi",
                              onTap: () => Get.offAllNamed(
                                PersonalQuestionPage.route,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )),
        ),
      ),
    );
  }
}

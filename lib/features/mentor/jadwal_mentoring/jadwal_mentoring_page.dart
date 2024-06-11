import 'package:compedia/config/themes/resources/app_color.dart';
import 'package:compedia/utils/widget/primary_button.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import 'jadwal_mentoring_controller.dart';
import 'package:compedia/utils/widget/appbar.dart';
import 'package:compedia/utils/widget/state_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class JadwalMentoringPage extends GetView<JadwalMentoringController> {
  static const route = '/jadwal/mentoring';
  const JadwalMentoringPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PrimaryAppBar(text: 'Ajukan Mentoring'),
      body: Obx(
        () => RefreshIndicator(
          onRefresh: () => controller.loadData(),
          child: StateHelperWidget(
            isLoading: controller.isLoading,
            isEmpty: controller.isEmpty,
            isEror: controller.isEror,
            body: SafeArea(
              child: FormBuilder(
                child: Stack(
                  children: [
                    SingleChildScrollView(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Lengkapi Pengajuan Mentoring",
                            style: Get.textTheme.displayLarge!.copyWith(
                              fontSize: 22,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 4, bottom: 12),
                            child: Text(
                              "Lengkapi data berikut dengan baik dan benar agar mentor bisa mengenalmu lebih dalam!",
                              style: Get.textTheme.bodySmall!.copyWith(
                                color: AppColor.neutral70,
                                fontSize: 14,
                              ),
                            ),
                          ),
                          FormBuilderDropdown<String>(
                            name: 'topik',
                            decoration: InputDecoration(
                              labelText: 'Topik Lomba',
                              border: Get.theme.inputDecorationTheme.border,
                            ),
                            items: ["IT", "Bisnis", "Creative"]
                                .map(
                                  (e) => DropdownMenuItem(
                                    value: e,
                                    child: Text(e),
                                  ),
                                )
                                .toList(),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 10, bottom: 10, left: 20),
                            child: Text(
                              "Pilih topik lomba yang ingin kamu diskusikan",
                              style: Get.textTheme.bodyMedium!.copyWith(
                                  color: AppColor.neutral70, fontSize: 12),
                            ),
                          ),
                          FormBuilderTextField(
                            name: "nomor",
                            decoration: InputDecoration(
                              hintText: "Nomor Whatsapp",
                              border: Get.theme.inputDecorationTheme.border,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 10, bottom: 10, left: 20),
                            child: Text(
                              "Pilih topik lomba yang ingin kamu diskusikan",
                              style: Get.textTheme.bodyMedium!.copyWith(
                                  color: AppColor.neutral70, fontSize: 12),
                            ),
                          ),
                          FormBuilderTextField(
                            name: "pembahasan",
                            maxLines: 5,
                            decoration: InputDecoration(
                              hintText: "Topik Pembahasan Mentoring",
                              border: Get.theme.inputDecorationTheme.border,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 10, bottom: 10, left: 20),
                            child: Text(
                              "Tuliskan konteks pembahasan untuk mentoringmu",
                              style: Get.textTheme.bodyMedium!.copyWith(
                                  color: AppColor.neutral70, fontSize: 12),
                            ),
                          ),
                          FormBuilderTextField(
                            name: "sosmed",
                            decoration: InputDecoration(
                              hintText: "Linkedin/Instagram",
                              border: Get.theme.inputDecorationTheme.border,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 10, bottom: 10, left: 20),
                            child: Text(
                              "Masukkan nama akun linkedin atau instagram Anda",
                              style: Get.textTheme.bodyMedium!.copyWith(
                                  color: AppColor.neutral70, fontSize: 12),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Perhatian! Bentuk mentoring yang diprovide oleh Compedia hanya bersifat online!",
                            style: Get.textTheme.bodySmall!.copyWith(
                              color: AppColor.neutral70,
                              fontSize: 14,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            child: Text(
                              "Hanya bisa melakukan reschedule maksimal 1x dengan batas reschedule maksimal H-1 dari tanggal mentoring",
                              style: Get.textTheme.bodySmall!.copyWith(
                                color: AppColor.neutral70,
                                fontSize: 14,
                              ),
                            ),
                          ),
                          FormBuilderCheckbox(
                            name: "sk",
                            title: Text(
                              "Dengan ini saya berkomitmen dan mematuhi Syarat & Ketentuan dari mentoring Compedia",
                              style: Get.textTheme.bodySmall!.copyWith(
                                color: AppColor.neutral70,
                                fontSize: 14,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 100,
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      left: 0,
                      child: Container(
                        height: 80,
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
                        child: PrimaryButton(
                          onPressed: () {},
                          text: "Ajukan Sekarang",
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

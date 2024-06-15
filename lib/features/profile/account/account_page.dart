import 'package:compedia/config/themes/resources/app_color.dart';
import 'package:compedia/utils/widget/primary_button.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import 'account_controller.dart';
import 'package:compedia/utils/widget/appbar.dart';
import 'package:compedia/utils/widget/state_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AccountPage extends GetView<AccountController> {
  static const route = '/account';
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PrimaryAppBar(text: 'Akun Saya'),
      body: Obx(
        () => RefreshIndicator(
          onRefresh: () => controller.loadData(),
          child: StateHelperWidget(
            isLoading: controller.isLoading,
            isEmpty: controller.isEmpty,
            isEror: controller.isEror,
            body: SafeArea(
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 16,
                  right: 16,
                  left: 16,
                  bottom: 12,
                ),
                child: FormBuilder(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            FormBuilderTextField(
                              name: "nama",
                              decoration: InputDecoration(
                                hintText: "Nama Anda",
                                border: Get.theme.inputDecorationTheme.border,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 10, bottom: 10, left: 20),
                              child: Text(
                                "Masukkan sesuai dengan nama anda di PDDIKTI",
                                style: Get.textTheme.bodyMedium!.copyWith(
                                  color: AppColor.neutral70,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                            FormBuilderDropdown<String>(
                              name: "Univ",
                              decoration: InputDecoration(
                                hintText: 'txt_univ_hint'.tr,
                                border: Get.theme.inputDecorationTheme.border,
                              ),
                              items: controller.univ
                                  .map((item) => DropdownMenuItem(
                                        alignment:
                                            AlignmentDirectional.centerStart,
                                        value: item,
                                        child: Text(item),
                                      ))
                                  .toList(),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 10, bottom: 10, left: 20),
                              child: Text(
                                "Pilih asal institusi yang sedang Anda tempuh",
                                style: Get.textTheme.bodyMedium!.copyWith(
                                  color: AppColor.neutral70,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                            FormBuilderTextField(
                              name: "email",
                              decoration: InputDecoration(
                                hintText: "Email anda",
                                border: Get.theme.inputDecorationTheme.border,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 10, bottom: 10, left: 20),
                              child: Text(
                                "Masukkan alamat email aktif anda",
                                style: Get.textTheme.bodyMedium!.copyWith(
                                  color: AppColor.neutral70,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      PrimaryButton(
                        onPressed: () {},
                        text: "Simpan",
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

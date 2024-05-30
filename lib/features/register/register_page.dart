import 'package:compedia/config/gen/image_resources.dart';
import 'package:compedia/config/themes/resources/app_color.dart';
import 'package:compedia/features/register/register_controller.dart';
import 'package:compedia/utils/widget/image_load.dart';
import 'package:compedia/utils/widget/primary_button.dart';
import 'package:compedia/utils/widget/state_helper.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';

class RegisterPage extends GetView<RegisterController> {
  static const route = '/register';
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => StateHelperWidget(
          isLoading: controller.isLoading,
          isEmpty: controller.isEmpty,
          isEror: controller.isEror,
          body: SafeArea(
            minimum: const EdgeInsets.only(
              top: 32,
              right: 16,
              left: 16,
            ),
            child: ListView(
              children: [
                ImageLoad(
                    src: appImages.imgLogo.path,
                    width: 195,
                    height: 50,
                    fit: BoxFit.contain),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: FormBuilder(
                    key: controller.formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'txt_register_title'.tr,
                          style: Get.textTheme.displayLarge!.copyWith(
                            fontSize: 22,
                          ),
                        ),
                        Text(
                          'txt_register_sub'.tr,
                          style: Get.textTheme.bodySmall!.copyWith(
                            fontSize: 14,
                            color: AppColor.neutral70,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        FormBuilderTextField(
                          name: "Nama",
                          decoration: InputDecoration(
                            hintText: 'txt_nama_hint'.tr,
                            border: Get.theme.inputDecorationTheme.border,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 4,
                            left: 12,
                            bottom: 12,
                          ),
                          child: Text(
                            'txt_nama_sub'.tr,
                            style: Get.textTheme.bodySmall!.copyWith(
                              fontSize: 12,
                              color: AppColor.neutral70,
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
                                    alignment: AlignmentDirectional.centerStart,
                                    value: item,
                                    child: Text(item),
                                  ))
                              .toList(),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 4,
                            left: 12,
                            bottom: 12,
                          ),
                          child: Text(
                            'txt_univ_sub'.tr,
                            style: Get.textTheme.bodySmall!.copyWith(
                              fontSize: 12,
                              color: AppColor.neutral70,
                            ),
                          ),
                        ),
                        FormBuilderTextField(
                          name: "Email",
                          decoration: InputDecoration(
                            hintText: 'txt_register_email_hint'.tr,
                            border: Get.theme.inputDecorationTheme.border,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 4,
                            left: 12,
                            bottom: 12,
                          ),
                          child: Text(
                            'txt_register_email_sub'.tr,
                            style: Get.textTheme.bodySmall!.copyWith(
                              fontSize: 12,
                              color: AppColor.neutral70,
                            ),
                          ),
                        ),
                        FormBuilderTextField(
                          name: "Password",
                          obscureText: controller.isObscure.value,
                          decoration: InputDecoration(
                            hintText: 'Kata Sandi',
                            border: Get.theme.inputDecorationTheme.border,
                            suffixIcon: IconButton(
                              onPressed: () => controller.changeObscure(),
                              icon: Icon(
                                controller.isObscure.value
                                    ? Icons.visibility_outlined
                                    : Icons.visibility_off_outlined,
                                color: AppColor.neutral70,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 4,
                            left: 12,
                            bottom: 12,
                          ),
                          child: Text(
                            'txt_register_pass_sub'.tr,
                            style: Get.textTheme.bodySmall!.copyWith(
                              fontSize: 12,
                              color: AppColor.neutral70,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10, bottom: 20),
                          child: Text(
                            'txt_register_sk'.tr,
                            textAlign: TextAlign.center,
                            style: Get.textTheme.bodySmall!.copyWith(
                              color: AppColor.neutral70,
                              fontSize: 14,
                            ),
                          ),
                        ),
                        PrimaryButton(
                          text: 'txt_btn_register'.tr,
                          onPressed: () {
                            if (controller.formKey.currentState!.validate()) {
                              controller.formKey.currentState!.save();
                              controller.register();
                            }
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text.rich(
                      TextSpan(
                          text: 'txt_udah_akun'.tr,
                          style: Get.textTheme.bodySmall!.copyWith(
                            color: AppColor.neutral70,
                            fontSize: 14,
                          ),
                          children: [
                            TextSpan(
                              text: " ${'txt_udah_akun2'.tr}",
                              recognizer: TapGestureRecognizer()
                                ..onTap = () => Get.back(),
                              style: Get.textTheme.displayLarge!.copyWith(
                                color: AppColor.primaryColor,
                                fontSize: 14,
                              ),
                            )
                          ]),
                    ),
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

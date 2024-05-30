import 'package:compedia/config/gen/image_resources.dart';
import 'package:compedia/config/themes/resources/app_color.dart';
import 'package:compedia/features/login/login_controller.dart';
import 'package:compedia/utils/widget/image_load.dart';
import 'package:compedia/utils/widget/primary_button.dart';
import 'package:compedia/utils/widget/state_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';

class LoginPage extends GetView<LoginController> {
  static const route = "/login";
  const LoginPage({super.key});

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
                          'txt_lg_welcom'.tr,
                          style: Get.textTheme.displayLarge!.copyWith(
                            fontSize: 22,
                          ),
                        ),
                        Text(
                          'txt_lg_content'.tr,
                          style: Get.textTheme.bodySmall!.copyWith(
                            fontSize: 14,
                            color: AppColor.neutral70,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        FormBuilderTextField(
                          name: "Email",
                          decoration: InputDecoration(
                            hintText: 'Email',
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
                            'txt_email_sub'.tr,
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
                            'txt_password_sub'.tr,
                            style: Get.textTheme.bodySmall!.copyWith(
                              fontSize: 12,
                              color: AppColor.neutral70,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            'txt_password_lupa'.tr,
                            style: Get.textTheme.displayLarge!.copyWith(
                              color: AppColor.primaryColor,
                              fontSize: 14,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Visibility(
                          visible: controller.isErorUser.value,
                          child: Text(
                            'txt_eror_user'.tr,
                            style: Get.textTheme.bodySmall!.copyWith(
                              fontSize: 12,
                              color: AppColor.redColor,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        PrimaryButton(
                          text: 'txt_btn_login'.tr,
                          onPressed: () {
                            if (controller.formKey.currentState!.validate()) {
                              controller.formKey.currentState!.save();
                              controller.login();
                            }
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 20),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'txt_opsi_login'.tr,
                      style: Get.textTheme.bodySmall!.copyWith(
                        color: AppColor.neutral70,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),

                // Button Google Login,
                PrimaryButton.outlineVersion(
                  onTap: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ImageLoad(
                        src: appImages.iconGoogle.path,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        'txt_login_google'.tr,
                        style: Get.textTheme.bodyMedium!.copyWith(
                          fontSize: 14,
                          color: AppColor.primaryColor,
                        ),
                      )
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text.rich(
                      TextSpan(
                          text: 'txt_buat_akun'.tr,
                          style: Get.textTheme.bodySmall!.copyWith(
                            color: AppColor.neutral70,
                            fontSize: 14,
                          ),
                          children: [
                            TextSpan(
                              text: 'txt_buat_akun2'.tr,
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

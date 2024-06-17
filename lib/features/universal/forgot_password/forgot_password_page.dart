import 'package:compedia/config/gen/image_resources.dart';
import 'package:compedia/config/themes/resources/app_color.dart';
import 'package:compedia/features/universal/forgot_password/forgot_password_controller.dart';
import 'package:compedia/utils/widget/image_load.dart';
import 'package:compedia/utils/widget/primary_button.dart';
import 'package:compedia/utils/widget/state_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';

class ForgotPasswordPage extends GetView<ForgotPasswordController> {
  static const route = '/forgot/password';
  const ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        minimum: const EdgeInsets.only(
          top: 40,
          right: 16,
          left: 16,
        ),
        child: Obx(
          () => StateHelperWidget(
              isLoading: controller.isLoading,
              isEmpty: controller.isEmpty,
              isEror: controller.isEror,
              body: SingleChildScrollView(
                child: FormBuilder(
                  key: controller.formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: ImageLoad(
                            src: appImages.imgLogo.path,
                            width: 195,
                            height: 50,
                            fit: BoxFit.contain),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Text(
                        'txt_fp_title'.tr,
                        style: Get.textTheme.displayLarge!.copyWith(
                          fontSize: 22,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        'txt_fp_sub'.tr,
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
                          bottom: 16,
                        ),
                        child: Text(
                          'txt_email_sub'.tr,
                          style: Get.textTheme.bodySmall!.copyWith(
                            fontSize: 12,
                            color: AppColor.neutral70,
                          ),
                        ),
                      ),
                      PrimaryButton(
                        text: 'txt_btn_sandi'.tr,
                        onPressed: () {},
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: PrimaryButton.outlineVersion(
                          onTap: () => Get.back(),
                          text: 'txt_btn_back'.tr,
                        ),
                      ),
                    ],
                  ),
                ),
              )),
        ),
      ),
    );
  }
}

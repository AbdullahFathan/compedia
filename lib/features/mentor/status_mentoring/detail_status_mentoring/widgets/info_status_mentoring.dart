import 'package:compedia/config/themes/resources/app_color.dart';
import 'package:compedia/features/mentor/detail_mentor/detail_mentor_page.dart';
import 'package:compedia/features/mentor/status_mentoring/detail_status_mentoring/widgets/card_status_mentoring.dart';
import 'package:compedia/utils/widget/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';

class InfoStatusMentoring extends StatelessWidget {
  const InfoStatusMentoring({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      children: [
        Text(
          "Detail Mentoring",
          style: Get.textTheme.displayLarge!.copyWith(
            fontSize: 22,
            height: 1.5,
          ),
        ),
        Text(
          "Berikut detail mentoring yang kamu pesan",
          style: Get.textTheme.bodySmall!.copyWith(
            color: AppColor.neutral70,
            fontSize: 14,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        FormBuilderTextField(
          name: "hari",
          initialValue: "Senin, 12 June 2024",
          decoration: InputDecoration(
            border: Get.theme.inputDecorationTheme.border,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10, bottom: 10, left: 20),
          child: Text(
            "Tanggal Mentoring",
            style: Get.textTheme.bodyMedium!
                .copyWith(color: AppColor.neutral70, fontSize: 12),
          ),
        ),
        FormBuilderTextField(
          name: "Waktu",
          initialValue: "09:00 - 10:00 - WIB",
          decoration: InputDecoration(
            border: Get.theme.inputDecorationTheme.border,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10, bottom: 10, left: 20),
          child: Text(
            "Jam Mentoring",
            style: Get.textTheme.bodyMedium!
                .copyWith(color: AppColor.neutral70, fontSize: 12),
          ),
        ),
        FormBuilderTextField(
          name: "nomor",
          initialValue: "085870062453",
          decoration: InputDecoration(
            border: Get.theme.inputDecorationTheme.border,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10, bottom: 10, left: 20),
          child: Text(
            "Nomor whatsapp aktif Anda",
            style: Get.textTheme.bodyMedium!
                .copyWith(color: AppColor.neutral70, fontSize: 12),
          ),
        ),
        FormBuilderTextField(
          name: "konetks",
          maxLines: 5,
          initialValue:
              "Terkait lomba UI/UX di Gemastik, tim kami masi stuck untuk ngedefine problemnya kak, kayak masih kurang keliatan urgensi dari masalahnya",
          decoration: InputDecoration(
            border: Get.theme.inputDecorationTheme.border,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10, bottom: 10, left: 20),
          child: Text(
            "Tuliskan konteks pembahasan untuk mentoringmu",
            style: Get.textTheme.bodyMedium!
                .copyWith(color: AppColor.neutral70, fontSize: 12),
          ),
        ),
        FormBuilderTextField(
          name: "sosmed",
          initialValue: "Raiden Shogun",
          decoration: InputDecoration(
            border: Get.theme.inputDecorationTheme.border,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10, bottom: 10, left: 20),
          child: Text(
            "Masukkan nama akun linkedin atau instagram Anda",
            style: Get.textTheme.bodyMedium!
                .copyWith(color: AppColor.neutral70, fontSize: 12),
          ),
        ),
        const CardStatusMentoring(),
        const SizedBox(
          height: 12,
        ),
        Text(
          "Profil Mentor",
          style: Get.textTheme.displayLarge!.copyWith(
            fontSize: 22,
            height: 1.5,
          ),
        ),
        Text(
          "Berikut detail profil mentor yang kamu pesan",
          style: Get.textTheme.bodySmall!.copyWith(
            color: AppColor.neutral70,
            fontSize: 14,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 12, bottom: 10),
          child: SizedBox(
            width: double.infinity,
            child: PrimaryButton.outlineVersion(
                text: "Lihat Profil Mentor Lengkap",
                onTap: () => Get.toNamed(DetailMentorPage.route)),
          ),
        )
      ],
    );
  }
}

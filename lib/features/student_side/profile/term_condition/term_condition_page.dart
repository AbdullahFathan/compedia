import 'package:compedia/config/gen/image_resources.dart';
import 'package:compedia/config/themes/resources/app_color.dart';
import 'package:compedia/utils/widget/appbar.dart';
import 'package:compedia/utils/widget/image_load.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TermConditionPage extends GetView {
  static const route = '/term/condition';
  const TermConditionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PrimaryAppBar(text: 'Syarat & Ketentuan'),
      body: SafeArea(
        minimum: const EdgeInsets.all(16),
        child: ListView(
          children: [
            Center(
              child: ImageLoad(
                src: appImages.imgLogoApp.path,
                height: 120,
                width: 120,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 12,
              ),
              child: Text(
                "Tentang Kami",
                style: Get.textTheme.bodyMedium!.copyWith(
                  fontSize: 16,
                ),
              ),
            ),
            Text(
              "Compedia merupakan platform berbasis aplikasi yang hadir untuk mendukung equality education dengan meningkatkan accessible mahasiswa terhadap kompetisi, mentoring online, dan komunitas online terpersonalisasi untuk mendukung pengalaman dan kontribusi mahasiswa Indonesia, terutama teman-teman yang berada pada lingkungan yang kurang eksposur terhadap kompetisi!",
              style: Get.textTheme.bodySmall!.copyWith(
                color: AppColor.neutral80,
                fontSize: 12,
              ),
            ),
            const SizedBox(
              height: 3,
            ),
            Text(
              "Support dan dukunganmu sangat berarti bagi kami untuk bisa mengembangkan platform ini!",
              style: Get.textTheme.bodySmall!.copyWith(
                color: AppColor.neutral80,
                fontSize: 12,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 12,
              ),
              child: Text(
                "Syarat & Ketentuan",
                style: Get.textTheme.bodyMedium!.copyWith(
                  fontSize: 16,
                ),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: term.length,
              itemBuilder: (context, index) {
                var item = term[index];
                return Text(
                  "${index + 1}. $item",
                  style: Get.textTheme.bodySmall!.copyWith(
                    color: AppColor.neutral80,
                    fontSize: 12,
                  ),
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 12,
              ),
              child: Text(
                "Media Sosial & Kontak Kami",
                style: Get.textTheme.bodyMedium!.copyWith(
                  fontSize: 16,
                ),
              ),
            ),
            dotText("Instagram: Compedia_id"),
            dotText("Website: Coming Soon"),
            dotText("Linkedin: Coming Soon"),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 12,
              ),
              child: Text(
                "Tim Pengembang Compedia",
                style: Get.textTheme.bodyMedium!.copyWith(
                  fontSize: 16,
                ),
              ),
            ),
            dotText("Abdullah Fathan"),
            dotText("Aditya Nugraha Tarihoran"),
            dotText("Vinncent Alexander Wong"),
          ],
        ),
      ),
    );
  }
}

List<String> term = [
  "Compedia hanya menyediakan mentoring secara online!",
  "Compedia tidak dipungut biaya untuk proses mentoring karena misi kami ingin memberdayakan ekosistem perlombaan di Indonesia, agar semakin accessible!",
  "Proses reschedule untuk mentoring maksimal 1x dengan batas reschedule maksimal H-1 dari tanggal mentoring!",
  "Seluruh lomba dan mentor yang masuk ke dalam sistem akan diseleksi oleh tim internal untuk menghindari konten & informasi yang bersifat negatif!",
  "Perbuatan negatif yang dilakukan oleh pengguna dapat beresiko penghapusan akun secara permanen!",
];

Widget dotText(String title) {
  return Text.rich(
    TextSpan(
      children: [
        const WidgetSpan(
          alignment: PlaceholderAlignment.middle,
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
          text: title,
          style: Get.textTheme.bodySmall!
              .copyWith(color: AppColor.neutral80, fontSize: 12, height: 1.5),
        )
      ],
    ),
  );
}

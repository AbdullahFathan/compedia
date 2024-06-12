import 'package:compedia/config/themes/resources/app_color.dart';
import 'package:compedia/utils/widget/search_widget.dart';

import 'topik_comunity_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TopikComunityPage extends GetView<TopikComunityController> {
  static const route = '/topik/comunity';
  const TopikComunityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 12, left: 16, right: 16),
        child: Column(
          children: [
            SearchWidget(
                hint: "Cari topik disini",
                controller: TextEditingController(),
                onSubmit: (e) {}),
            Expanded(
              child: ListView.separated(
                itemCount: 5,
                padding: const EdgeInsets.only(
                  top: 8,
                  bottom: 90,
                ),
                separatorBuilder: (context, index) => const Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 5,
                  ),
                  child: Divider(),
                ),
                itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Lomba UI/UX",
                        style: Get.textTheme.bodyMedium!.copyWith(
                          fontSize: 16,
                          height: 2,
                        ),
                      ),
                      Text(
                        "Oleh Cent - 2 Jam lalu",
                        style: Get.textTheme.bodyMedium!.copyWith(
                          fontSize: 16,
                          height: 2,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Text(
                          "Jujur gue sebenarnya bingung bgt juri itu liat apa dan ngenilai di aspek apa ya kalo lomba UI/UX? Soalnya gue ngerasa gue udah terapin best practice design thinking tapi mentok sampe finalis, sarannya dong gue perlu improve apa :(",
                          style: Get.textTheme.bodySmall!.copyWith(
                            color: AppColor.neutral80,
                            fontSize: 14,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.message_outlined,
                            color: AppColor.primary70,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 5,
                              right: 10,
                            ),
                            child: Text(
                              "1 Diskusi",
                              style: Get.textTheme.bodySmall!.copyWith(
                                  color: AppColor.primary70, fontSize: 12),
                            ),
                          ),
                          const Icon(
                            Icons.bookmark_outline,
                            color: AppColor.primary70,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 5,
                              right: 10,
                            ),
                            child: Text(
                              "Simpan Topik",
                              style: Get.textTheme.bodySmall!.copyWith(
                                  color: AppColor.primary70, fontSize: 12),
                            ),
                          ),
                        ],
                      )
                    ],
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

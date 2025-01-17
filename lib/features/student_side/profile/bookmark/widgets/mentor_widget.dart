import 'package:compedia/config/themes/resources/app_color.dart';
import 'package:compedia/utils/widget/mentor_card.dart';
import 'package:compedia/utils/widget/search_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SavedMentorPage extends StatelessWidget {
  const SavedMentorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 20,
        left: 16,
        right: 16,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Bookmark Mentor 👀",
            style: Get.textTheme.displayLarge!.copyWith(
              fontSize: 22,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 4, bottom: 12),
            child: Text(
              "Berikut list mentor yang telah kamu simpan sebelumnya!",
              style: Get.textTheme.bodySmall!.copyWith(
                color: AppColor.neutral70,
                fontSize: 14,
              ),
            ),
          ),
          SearchWidget(
            hint: "Cari Nama Mentor disini",
            controller: TextEditingController(),
            onSubmit: (value) {},
          ),
          Expanded(
            child: ListView.separated(
              itemCount: 5,
              padding: const EdgeInsets.only(
                top: 16,
                bottom: 8,
              ),
              separatorBuilder: (context, index) => const SizedBox(height: 20),
              itemBuilder: (context, index) {
                return const MentorCardWidget();
              },
            ),
          )
        ],
      ),
    );
  }
}

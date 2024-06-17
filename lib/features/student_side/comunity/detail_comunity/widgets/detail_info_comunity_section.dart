import 'package:compedia/config/themes/resources/app_color.dart';
import 'package:compedia/features/student_side/comunity/about_comunity/about_comunity_page.dart';
import 'package:compedia/features/student_side/comunity/topik_comunity/topik_comunity_page.dart';
import 'package:compedia/utils/widget/tab_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailInfoCumunitySection extends StatelessWidget {
  const DetailInfoCumunitySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Container(
            height: 230,
            width: 160,
            alignment: Alignment.center,
            margin: const EdgeInsets.symmetric(vertical: 16),
            decoration: BoxDecoration(
              color: AppColor.primary70,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
              "IT",
              style: Get.textTheme.displayLarge!.copyWith(
                color: AppColor.whiteColor,
                fontSize: 48,
              ),
            ),
          ),
        ),
        const Expanded(
          child: TabWidgetBuilder(
            tabName: ["Tentang", "Topik"],
            tabWidget: [
              AboutComunityPage(),
              TopikComunityPage(),
            ],
          ),
        )
      ],
    );
  }
}

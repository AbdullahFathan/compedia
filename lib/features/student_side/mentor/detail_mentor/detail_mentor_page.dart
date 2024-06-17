import 'package:compedia/features/student_side/mentor/detail_mentor/widgets/button_section.dart';
import 'package:compedia/features/student_side/mentor/detail_mentor/widgets/detail_info_section.dart';

import 'detail_mentor_controller.dart';
import 'package:compedia/utils/widget/appbar.dart';
import 'package:compedia/utils/widget/state_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailMentorPage extends GetView<DetailMentorController> {
  static const route = '/detail/mentor';
  const DetailMentorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PrimaryAppBar(text: 'txt_dm_appbar'.tr),
      body: Obx(
        () => RefreshIndicator(
          onRefresh: () => controller.loadData(),
          child: StateHelperWidget(
              isLoading: controller.isLoading,
              isEmpty: controller.isEmpty,
              isEror: controller.isEror,
              body: const SafeArea(
                child: Stack(
                  children: [
                    DetailInfoMentorSection(),
                    Positioned(
                      left: 0,
                      right: 0,
                      bottom: 0,
                      child: ButtonDetailMentorSection(),
                    )
                  ],
                ),
              )),
        ),
      ),
    );
  }
}

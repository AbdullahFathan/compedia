import 'package:compedia/features/student_side/competition/detail_competition/widgets/button_section.dart';
import 'package:compedia/features/student_side/competition/detail_competition/widgets/detail_info_section.dart';

import 'detail_competition_controller.dart';
import 'package:compedia/utils/widget/appbar.dart';
import 'package:compedia/utils/widget/state_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailCompetitionPage extends GetView<DetailCompetitionController> {
  static const route = '/detail/competition';
  const DetailCompetitionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PrimaryAppBar(text: 'txt_dc_appbar'.tr),
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
                    DetailInfoSection(),
                    Positioned(
                      left: 0,
                      right: 0,
                      bottom: 0,
                      child: ButtonSection(),
                    )
                  ],
                ),
              )),
        ),
      ),
    );
  }
}

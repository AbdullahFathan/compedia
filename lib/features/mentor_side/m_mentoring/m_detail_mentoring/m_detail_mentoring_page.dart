import 'package:compedia/features/mentor_side/m_mentoring/m_detail_mentoring/widgets/button_section.dart';
import 'package:compedia/features/mentor_side/m_mentoring/m_detail_mentoring/widgets/detail_section.dart';

import 'm_detail_mentoring_controller.dart';
import 'package:compedia/utils/widget/appbar.dart';
import 'package:compedia/utils/widget/state_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MDetailMentoringPage extends GetView<MDetailMentoringController> {
  static const route = '/m/detail/mentoring';
  const MDetailMentoringPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PrimaryAppBar(text: 'Detail Mentoring'),
      body: Obx(
        () => RefreshIndicator(
          onRefresh: () => controller.loadData(),
          child: StateHelperWidget(
              isLoading: controller.isLoading,
              isEmpty: controller.isEmpty,
              isEror: controller.isEror,
              body: SafeArea(
                child: const Stack(
                  children: [
                    DetailInfoSection(),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
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

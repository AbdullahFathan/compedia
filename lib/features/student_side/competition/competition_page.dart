import 'package:compedia/features/student_side/competition/find_competion/find_competion_page.dart';
import 'package:compedia/features/student_side/competition/followed_competion/followed_competion_page.dart';

import 'package:compedia/utils/widget/tab_widget.dart';

import 'competition_controller.dart';
import 'package:compedia/utils/widget/appbar.dart';
import 'package:compedia/utils/widget/state_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CompetitionPage extends GetView<CompetitionController> {
  static const route = '/competition';
  const CompetitionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PrimaryAppBar(text: 'Kompetisi'),
      body: Obx(
        () => RefreshIndicator(
          onRefresh: () => controller.loadData(),
          child: StateHelperWidget(
              isLoading: controller.isLoading,
              isEmpty: controller.isEmpty,
              isEror: controller.isEror,
              body: TabWidgetBuilder(
                tabName: [
                  'txt_cp_bar1'.tr,
                  'txt_cp_bar2'.tr,
                ],
                tabWidget: const [
                  FindCompetionPage(),
                  FollowedCompetionPage(),
                ],
              )),
        ),
      ),
    );
  }
}

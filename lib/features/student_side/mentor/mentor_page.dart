import 'package:compedia/features/student_side/mentor/find_mentor/find_mentor_page.dart';
import 'package:compedia/features/student_side/mentor/status_mentoring/status_mentoring_page.dart';
import 'package:compedia/utils/widget/tab_widget.dart';

import 'mentor_controller.dart';
import 'package:compedia/utils/widget/appbar.dart';
import 'package:compedia/utils/widget/state_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MentorPage extends GetView<MentorController> {
  static const route = '/mentor';
  const MentorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PrimaryAppBar(text: 'Mentor'),
      body: Obx(
        () => RefreshIndicator(
          onRefresh: () => controller.loadData(),
          child: StateHelperWidget(
              isLoading: controller.isLoading,
              isEmpty: controller.isEmpty,
              isEror: controller.isEror,
              body: const TabWidgetBuilder(
                tabName: [
                  "Cari Mentor",
                  "Status Mentoring",
                ],
                tabWidget: [
                  FindMentorPage(),
                  StatusMentoringPage(),
                ],
              )),
        ),
      ),
    );
  }
}

import 'package:compedia/features/mentor_side/m_mentoring/m_menoting_disejutui/m_menoting_disejutui_page.dart';
import 'package:compedia/features/mentor_side/m_mentoring/m_menoting_menunggu/m_menoting_menunggu_page.dart';
import 'package:compedia/features/mentor_side/m_mentoring/m_menoting_selesai/m_menoting_selesai_page.dart';
import 'package:compedia/utils/widget/tab_widget.dart';

import 'm_mentoring_controller.dart';
import 'package:compedia/utils/widget/appbar.dart';
import 'package:compedia/utils/widget/state_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MMentoringPage extends GetView<MMentoringController> {
  static const route = '/m/mentoring';
  const MMentoringPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PrimaryAppBar(text: 'MMentoring Page'),
      body: Obx(
        () => RefreshIndicator(
          onRefresh: () => controller.loadData(),
          child: StateHelperWidget(
            isLoading: controller.isLoading,
            isEmpty: controller.isEmpty,
            isEror: controller.isEror,
            body: const TabWidgetBuilder(
              tabName: [
                "Disetujui",
                "Menunggu",
                "Selesai",
              ],
              tabWidget: [
                MMenotingDisejutuiPage(),
                MMenotingMenungguPage(),
                MMenotingSelesaiPage(),
              ],
              lenTab: 3,
            ),
          ),
        ),
      ),
    );
  }
}

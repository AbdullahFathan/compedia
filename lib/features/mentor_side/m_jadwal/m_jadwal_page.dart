import 'package:compedia/features/mentor_side/m_jadwal/m_jadwal_kaldaluwarsa/m_jadwal_kaldaluwarsa_page.dart';
import 'package:compedia/features/mentor_side/m_jadwal/m_jadwal_tersedia/m_jadwal_tersedia_page.dart';
import 'package:compedia/utils/widget/tab_widget.dart';

import 'm_jadwal_controller.dart';
import 'package:compedia/utils/widget/appbar.dart';
import 'package:compedia/utils/widget/state_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MJadwalPage extends GetView<MJadwalController> {
  static const route = '/m/jadwal';
  const MJadwalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PrimaryAppBar(text: 'Mentoring'),
      body: Obx(
        () => RefreshIndicator(
          onRefresh: () => controller.loadData(),
          child: StateHelperWidget(
              isLoading: controller.isLoading,
              isEmpty: controller.isEmpty,
              isEror: controller.isEror,
              body: const TabWidgetBuilder(
                tabName: ["Tersedia", "Kadaluwarsa"],
                tabWidget: [
                  MJadwalTersediaPage(),
                  MJadwalKaldaluwarsaPage(),
                ],
              )),
        ),
      ),
    );
  }
}

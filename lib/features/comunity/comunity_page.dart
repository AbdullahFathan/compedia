import 'package:compedia/features/comunity/find_comunity/find_comunity_page.dart';
import 'package:compedia/features/comunity/joined_comunity/joined_comunity_page.dart';
import 'package:compedia/utils/widget/tab_widget.dart';

import 'comunity_controller.dart';
import 'package:compedia/utils/widget/appbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ComunityPage extends GetView<ComunityController> {
  static const route = '/comunity';
  const ComunityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PrimaryAppBar(text: 'Komunitas'),
      body: RefreshIndicator(
        onRefresh: () => controller.loadData(),
        child: const TabWidgetBuilder(
          tabName: [
            "Cari Komunitas",
            "Komunitas Tergabung",
          ],
          tabWidget: [
            FindComunityPage(),
            JoinedComunityPage(),
          ],
        ),
      ),
    );
  }
}

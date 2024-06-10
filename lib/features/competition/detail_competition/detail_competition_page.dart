import 'detail_competition_controller.dart';
import 'package:compedia/utils/widget/appbar.dart';
import 'package:compedia/utils/widget/state_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailCompetitionPage extends GetView<DetailCompetitionController> {
  static const route ='/detail/competition';
  const DetailCompetitionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PrimaryAppBar(text: 'DetailCompetition Page'),
      body: Obx(
        () => RefreshIndicator(
          onRefresh: () => controller.loadData(),
          child: StateHelperWidget(
            isLoading: controller.isLoading,
            isEmpty: controller.isEmpty,
            isEror: controller.isEror,
            body: const Center(
              child: Text('DetailCompetition Page'),
            ),
          ),
        ),
      ),
    );
  }
}

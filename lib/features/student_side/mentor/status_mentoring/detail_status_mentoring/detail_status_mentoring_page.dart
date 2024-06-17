import 'package:compedia/config/themes/resources/app_color.dart';
import 'package:compedia/features/student_side/mentor/status_mentoring/detail_status_mentoring/widgets/info_status_mentoring.dart';
import 'package:compedia/utils/widget/primary_button.dart';

import 'detail_status_mentoring_controller.dart';
import 'package:compedia/utils/widget/appbar.dart';
import 'package:compedia/utils/widget/state_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailStatusMentoringPage
    extends GetView<DetailStatusMentoringController> {
  static const route = '/detail/status/mentoring';
  const DetailStatusMentoringPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PrimaryAppBar(text: 'Detail Mentor'),
      body: Obx(
        () => RefreshIndicator(
          onRefresh: () => controller.loadData(),
          child: StateHelperWidget(
            isLoading: controller.isLoading,
            isEmpty: controller.isEmpty,
            isEror: controller.isEror,
            body: SafeArea(
              child: Stack(
                children: [
                  const InfoStatusMentoring(),
                  Visibility(
                    visible: true,
                    child: Positioned(
                        bottom: 0,
                        left: 0,
                        width: 0,
                        child: Container(
                          height: 80,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 12,
                          ),
                          width: double.infinity,
                          decoration: const BoxDecoration(
                            color: AppColor.whiteColor,
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x1A474042),
                                offset: Offset(0, -4),
                                blurRadius: 16,
                              ),
                            ],
                          ),
                          child: PrimaryButton(
                            onPressed: () {},
                            text: "Lihat Feedbackmu",
                          ),
                        )),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

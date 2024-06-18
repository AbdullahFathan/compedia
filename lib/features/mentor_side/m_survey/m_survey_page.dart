import 'package:compedia/config/themes/resources/app_color.dart';
import 'package:compedia/features/mentor_side/m_survey/widgets/m_survey_four.dart';
import 'package:compedia/features/mentor_side/m_survey/widgets/m_survey_one.dart';
import 'package:compedia/features/mentor_side/m_survey/widgets/m_survey_third.dart';
import 'package:compedia/features/mentor_side/m_survey/widgets/m_survey_two.dart';
import 'package:compedia/features/universal/welcome/questionnaire/widgets/stepper.dart';
import 'package:compedia/models/constant/quiestionnaire_cons.dart';
import 'package:compedia/utils/widget/primary_button.dart';

import 'm_survey_controller.dart';
import 'package:compedia/utils/widget/state_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MSurveyPage extends GetView<MSurveyController> {
  static const route = '/m/survey';
  const MSurveyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        minimum: const EdgeInsets.symmetric(horizontal: 16),
        child: Obx(
          () => RefreshIndicator(
            onRefresh: () => controller.loadData(),
            child: StateHelperWidget(
                isLoading: controller.isLoading,
                isEmpty: controller.isEmpty,
                isEror: controller.isEror,
                body: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: PageView.builder(
                        controller: controller.pageController,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: titleMSurvey.length,
                        itemBuilder: (context, index) {
                          return Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 12,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Obx(
                                  () => StepperWidget(
                                    currentIndex: controller.currIndex.value,
                                    len: titleMSurvey.length,
                                  ),
                                ),
                                Text(
                                  titleMSurvey[index],
                                  textAlign: TextAlign.center,
                                  style: Get.textTheme.bodyMedium!.copyWith(
                                    fontSize: 16,
                                    height: 1.5,
                                  ),
                                ),
                                Text(
                                  subTitleMSurvey[index],
                                  textAlign: TextAlign.center,
                                  style: Get.textTheme.bodySmall!.copyWith(
                                    fontSize: 14,
                                    height: 1.5,
                                    color: AppColor.neutral70,
                                  ),
                                ),
                                _getContentBody(index),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                    PrimaryButton(
                        text: 'txt_btn_next'.tr,
                        onPressed: () {
                          controller.nextPage();
                        }),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: PrimaryButton.outlineVersion(
                          text: 'txt_btn_back'.tr,
                          onTap: () {
                            controller.prevPage();
                          }),
                    )
                  ],
                )),
          ),
        ),
      ),
    );
  }

  Widget _getContentBody(int index) {
    switch (index) {
      case 0:
        return const MSurveyOneWidget();
      case 1:
        return MSurveyTwoWidget(controller: controller.answerTwoController);
      case 2:
        return MSurveyThirdWidget(controller: controller.answerThirdController);
      case 3:
        return MSurveyFourWidget(
          controllerFlied1: controller.answerFour1Controller,
          controllerFlied2: controller.answerFour2Controller,
        );

      default:
        return Center(
          child: Text("page ke - $index"),
        );
    }
  }
}

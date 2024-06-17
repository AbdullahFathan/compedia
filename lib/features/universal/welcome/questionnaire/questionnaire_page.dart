import 'package:compedia/features/universal/welcome/questionnaire/widgets/question_one.dart';
import 'package:compedia/features/universal/welcome/questionnaire/widgets/question_third.dart';
import 'package:compedia/features/universal/welcome/questionnaire/widgets/question_two.dart';
import 'package:compedia/features/universal/welcome/questionnaire/widgets/stepper.dart';
import 'package:compedia/utils/widget/primary_button.dart';
import 'questionnaire_controller.dart';
import 'package:compedia/utils/widget/state_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class QuestionnairePage extends GetView<QuestionnaireController> {
  static const route = '/questionnaire';
  const QuestionnairePage({super.key});

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
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 12,
                            ),
                            child: Column(
                              children: [
                                Obx(
                                  () => StepperWidget(
                                    currentIndex: controller.currIndex.value,
                                    len: 5,
                                  ),
                                ),
                                getContentBody(index),
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

  Widget getContentBody(int index) {
    switch (index) {
      case 0:
        return const QuestionOneWidget();
      case 1:
        return const QuestionTwoWidget();
      case 2:
        return const QuestionThridWidget();

      default:
        return Center(
          child: Text("page ke - $index"),
        );
    }
  }
}

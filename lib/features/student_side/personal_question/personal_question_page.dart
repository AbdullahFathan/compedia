import 'package:compedia/features/student_side/personal_question/constants/personal_question_cons.dart';
import 'package:compedia/features/student_side/personal_question/widgets/personal_question_builder.dart';
import 'package:compedia/features/student_side/personal_question/widgets/text_area_question.dart';
import 'package:compedia/features/universal/welcome/questionnaire/widgets/stepper.dart';
import 'package:compedia/utils/widget/primary_button.dart';

import 'personal_question_controller.dart';
import 'package:compedia/utils/widget/state_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PersonalQuestionPage extends GetView<PersonalQuestionController> {
  static const route = '/personal/question';
  const PersonalQuestionPage({super.key});

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
                        itemCount: titlePage.length,
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
                                _getBody(index)
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                    PrimaryButton(
                        text: controller.currIndex.value != 4
                            ? 'txt_btn_next'.tr
                            : "Lihat Hasil Analisis",
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

  Widget _getBody(int index) {
    if (index != 4) {
      return PersonalQuestionBuilder(
        title: titlePage[index],
        choicesAnswer: choicesData[index]!,
        dataAnswer: controller.getCurentList(),
      );
    }

    return TextAreaQuestion(
      title: titlePage[index],
      textEditingController: controller.textEditingController,
    );
  }
}

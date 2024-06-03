import 'package:compedia/features/welcome/questionnaire/constant/quiestionnaire_cons.dart';
import 'package:compedia/features/welcome/questionnaire/questionnaire_controller.dart';
import 'package:compedia/features/welcome/questionnaire/widgets/choice_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class QuestionTwoWidget extends GetView<QuestionnaireController> {
  const QuestionTwoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'txt_title_2'.tr,
            textAlign: TextAlign.center,
            style: Get.textTheme.bodyMedium!.copyWith(
              fontSize: 16,
              height: 1.5,
            ),
          ),
          ListView.separated(
            shrinkWrap: true,
            padding: const EdgeInsets.only(top: 30),
            itemCount: pelaksanaan.length,
            separatorBuilder: (context, index) => const SizedBox(
              height: 20,
            ),
            itemBuilder: (context, index) {
              return ChoiceButtonWidget(
                height: 36,
                witdh: 301,
                text: pelaksanaan[index],
                isPick: controller.answerTwo.contains(pelaksanaan[index]),
              );
            },
          )
        ],
      ),
    );
  }
}

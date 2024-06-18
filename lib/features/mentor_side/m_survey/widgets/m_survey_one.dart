import 'package:compedia/features/mentor_side/m_survey/m_survey_controller.dart';
import 'package:compedia/features/universal/welcome/questionnaire/widgets/choice_button.dart';
import 'package:compedia/models/constant/quiestionnaire_cons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MSurveyOneWidget extends GetView<MSurveyController> {
  const MSurveyOneWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          GridView.builder(
            shrinkWrap: true,
            padding: const EdgeInsets.only(top: 30),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
                mainAxisExtent: 48),
            itemCount: keminatan.length,
            itemBuilder: (context, index) {
              return ChoiceButtonWidget(
                height: 36,
                witdh: 84,
                text: keminatan[index],
                isPick: controller.answerOne.contains(keminatan[index]),
                controller: controller,
              );
            },
          )
        ],
      ),
    );
  }
}

import 'package:compedia/features/student_side/personal_question/personal_question_controller.dart';
import 'package:compedia/features/universal/welcome/questionnaire/widgets/choice_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class PersonalQuestionBuilder extends GetView<PersonalQuestionController> {
  final String title;
  final List<String> choicesAnswer;
  final List<String> dataAnswer;
  const PersonalQuestionBuilder(
      {super.key,
      required this.title,
      required this.choicesAnswer,
      required this.dataAnswer});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            title,
            textAlign: TextAlign.center,
            style: Get.textTheme.bodyMedium!.copyWith(
              fontSize: 16,
              height: 1.5,
            ),
          ),
          ListView.separated(
            shrinkWrap: true,
            padding: const EdgeInsets.only(top: 30),
            itemCount: choicesAnswer.length,
            separatorBuilder: (context, index) => const SizedBox(
              height: 20,
            ),
            itemBuilder: (context, index) {
              var item = choicesAnswer[index];
              return ChoiceButtonWidget(
                height: 36,
                witdh: 301,
                text: item,
                isPick: dataAnswer.contains(item),
                controller: controller,
              );
            },
          )
        ],
      ),
    );
  }
}

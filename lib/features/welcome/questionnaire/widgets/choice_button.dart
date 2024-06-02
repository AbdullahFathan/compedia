import 'package:compedia/features/welcome/questionnaire/questionnaire_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:compedia/config/themes/resources/app_color.dart';

class ChoiceButtonWidget extends StatefulWidget {
  final String text;
  final double witdh;
  final double height;
  const ChoiceButtonWidget({
    super.key,
    required this.text,
    required this.witdh,
    required this.height,
  });

  @override
  State<ChoiceButtonWidget> createState() => _ChoiceButtonWidgetState();
}

class _ChoiceButtonWidgetState extends State<ChoiceButtonWidget> {
  bool isSelected = false;

  final controller = Get.find<QuestionnaireController>();

  void storeData() {
    if (isSelected) {
      controller.removeFromList(widget.text);
    } else {
      controller.addToList(widget.text);
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        storeData();
        setState(() {
          isSelected = !isSelected;
        });
      },
      child: Container(
        height: widget.height,
        width: widget.witdh,
        decoration: ShapeDecoration(
          color: isSelected ? AppColor.primaryColor : AppColor.whiteColor,
          shape: const StadiumBorder(
            side: BorderSide(
              color: AppColor.primaryColor,
              width: 1,
            ),
          ),
        ),
        child: Center(
          child: Text(
            widget.text,
            style: Get.textTheme.bodyMedium!.copyWith(
              color: isSelected ? AppColor.whiteColor : AppColor.primaryColor,
              fontSize: 12,
            ),
          ),
        ),
      ),
    );
  }
}

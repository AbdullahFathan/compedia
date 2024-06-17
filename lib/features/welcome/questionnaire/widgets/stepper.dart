import 'package:compedia/config/themes/resources/app_color.dart';
import 'package:easy_stepper/easy_stepper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StepperWidget extends StatelessWidget {
  final int currentIndex;
  final int len;
  const StepperWidget(
      {super.key, required this.currentIndex, required this.len});

  @override
  Widget build(BuildContext context) {
    return EasyStepper(
      activeStep: currentIndex,
      internalPadding: 8,
      defaultStepBorderType: BorderType.normal,
      stepRadius: 23,
      activeStepBorderColor: AppColor.secondaryColor,
      finishedStepBorderColor: AppColor.secondaryColor,
      unreachedStepBorderColor: AppColor.secondaryColor,
      finishedStepBackgroundColor: AppColor.whiteColor,
      activeStepBackgroundColor: AppColor.secondaryColor,
      borderThickness: 2,
      enableStepTapping: false,
      showLoadingAnimation: false,
      showTitle: false,
      lineStyle: const LineStyle(
        lineLength: 40,
        lineType: LineType.dashed,
        lineThickness: 3,
        lineSpace: 1,
        lineWidth: 15,
        unreachedLineType: LineType.dashed,
        defaultLineColor: AppColor.primary30,
      ),
      steps: List.generate(
        len,
        (index) => EasyStep(
          customStep: Text(
            "${index + 1}",
            style: Get.textTheme.bodyMedium!.copyWith(
              color: currentIndex == index
                  ? AppColor.whiteColor
                  : AppColor.primaryColor,
              fontSize: 14,
            ),
          ),
        ),
      ),
    );
  }
}

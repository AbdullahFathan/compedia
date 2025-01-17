import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:compedia/config/themes/resources/app_color.dart';

class ChoiceButtonWidget extends StatefulWidget {
  final String text;
  final double witdh;
  final double height;
  final bool isPick;
  final GetxController controller;
  const ChoiceButtonWidget({
    super.key,
    required this.text,
    required this.witdh,
    required this.height,
    required this.isPick,
    required this.controller,
  });

  @override
  State<ChoiceButtonWidget> createState() => _ChoiceButtonWidgetState();
}

class _ChoiceButtonWidgetState extends State<ChoiceButtonWidget> {
  late bool isSelected;
  // ignore: prefer_typing_uninitialized_variables
  late var controller;

  @override
  void initState() {
    controller = widget.controller;
    isSelected = widget.isPick;
    super.initState();
  }

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
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 6),
        decoration: ShapeDecoration(
          color: isSelected ? AppColor.primaryColor : AppColor.whiteColor,
          shape: const StadiumBorder(
            side: BorderSide(
              color: AppColor.primaryColor,
              width: 1,
            ),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Center(
              child: Text(
                widget.text,
                textAlign: TextAlign.center,
                style: Get.textTheme.bodyMedium!.copyWith(
                  color:
                      isSelected ? AppColor.whiteColor : AppColor.primaryColor,
                  fontSize: 12,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

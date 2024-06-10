import 'package:compedia/config/themes/resources/app_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CompetionCategoryWidget extends StatelessWidget {
  const CompetionCategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 27,
      child: ListView.separated(
        itemCount: 1,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Material(
            shape: const StadiumBorder(),
            color: AppColor.primary50,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 6,
              ),
              child: Text(
                "IT",
                style: Get.textTheme.bodyMedium!.copyWith(
                  color: AppColor.primary70,
                  fontSize: 12,
                ),
              ),
            ),
          );
        },
        separatorBuilder: (context, index) => const SizedBox(
          width: 8,
        ),
      ),
    );
  }
}

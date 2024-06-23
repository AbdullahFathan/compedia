import 'package:compedia/config/themes/resources/app_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MMentoringCardWidget extends StatelessWidget {
  final String title;
  final String date;
  final String time;
  final String detail;
  final Color borderColor;
  const MMentoringCardWidget(
      {super.key,
      required this.title,
      required this.date,
      required this.time,
      required this.detail,
      required this.borderColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      width: 330,
      padding: const EdgeInsets.symmetric(
        vertical: 16,
        horizontal: 20,
      ),
      decoration: BoxDecoration(
        color: AppColor.whiteColor,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          width: 1,
          color: borderColor,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              const Icon(
                Icons.person_3_outlined,
                color: AppColor.neutral100,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                title,
                style: Get.textTheme.bodyMedium!.copyWith(
                  fontSize: 12,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          Row(
            children: [
              const Icon(
                Icons.calendar_month_rounded,
                color: AppColor.neutral100,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                "$date / $time",
                style: Get.textTheme.bodyMedium!.copyWith(
                  fontSize: 12,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          Flexible(
            child: Text(
              detail,
              style: Get.textTheme.bodySmall!.copyWith(
                color: AppColor.neutral70,
                fontSize: 12,
              ),
              softWrap: true,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          )
        ],
      ),
    );
  }

  static Widget scheduleType({
    required Color borderColor,
    required String date,
    required String time,
  }) {
    return Container(
      height: 70,
      padding: const EdgeInsets.symmetric(
        vertical: 16,
        horizontal: 20,
      ),
      decoration: BoxDecoration(
        color: AppColor.whiteColor,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          width: 1,
          color: borderColor,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              const Icon(
                Icons.calendar_month_rounded,
                color: AppColor.neutral100,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                "$date / $time",
                style: Get.textTheme.bodyMedium!.copyWith(
                  fontSize: 14,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 12,
          ),
        ],
      ),
    );
  }
}

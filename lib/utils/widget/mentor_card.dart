import 'package:compedia/config/themes/resources/app_color.dart';
import 'package:compedia/utils/widget/image_load.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class MentorCardWidget extends StatelessWidget {
  const MentorCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 345,
      padding: const EdgeInsets.symmetric(
        vertical: 8,
        horizontal: 10,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: AppColor.bordeColor,
        ),
      ),
      child: Row(
        children: [
          ImageLoad(
            src:
                "https://images.unsplash.com/photo-1605993439219-9d09d2020fa5?q=80&w=2787&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
            height: 150,
            width: 120,
            borderRadius: BorderRadius.circular(12),
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                  child: Text(
                "Ariel Tantum",
                style: Get.textTheme.bodyMedium!.copyWith(
                  fontSize: 14,
                ),
              )),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Text(
                  "Mobile Developer",
                  style: Get.textTheme.bodyMedium!
                      .copyWith(fontSize: 14, color: AppColor.primaryColor),
                ),
              ),
              Text(
                "Rp 20.000/sesi",
                style: Get.textTheme.bodyMedium!
                    .copyWith(fontSize: 14, color: AppColor.primary70),
              ),
              const SizedBox(
                height: 8,
              ),
              Flexible(
                child: Text(
                  "Memenangkan 10 lomba software\ndevelopment tingkat nasional! ...",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: Get.textTheme.bodyMedium!.copyWith(
                    fontSize: 12,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

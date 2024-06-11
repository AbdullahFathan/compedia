// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:compedia/config/themes/resources/app_color.dart';
import 'package:compedia/models/category.dart';

class CategoryChipWidget extends StatelessWidget {
  final List<Category> dataList;
  const CategoryChipWidget({
    super.key,
    required this.dataList,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 27,
      child: ListView.separated(
        itemCount: dataList.length,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          var item = dataList[index];
          return Material(
            shape: const StadiumBorder(),
            color: AppColor.primary50,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 6,
              ),
              child: Text(
                "${item.name}",
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

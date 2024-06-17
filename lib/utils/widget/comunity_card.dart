import 'package:compedia/config/themes/resources/app_color.dart';
import 'package:compedia/features/student_side/comunity/detail_comunity/detail_comunity_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ComunintyCard extends StatelessWidget {
  const ComunintyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Get.toNamed(DetailComunityPage.route),
      child: Container(
        height: 200,
        width: 340,
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
            Container(
              height: 130,
              width: 100,
              decoration: BoxDecoration(
                color: AppColor.primary70,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(
                child: Text(
                  "IT",
                  style: Get.textTheme.displayLarge!.copyWith(
                    color: AppColor.whiteColor,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: Text(
                      "Information Technology",
                      style: Get.textTheme.bodyMedium!.copyWith(
                        fontSize: 14,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Text(
                      "3 Members",
                      style: Get.textTheme.bodyMedium!.copyWith(
                        fontSize: 14,
                        color: AppColor.primaryColor,
                      ),
                    ),
                  ),
                  Flexible(
                    child: Text(
                      "Komunitas untuk teman-teman yang tertarik untuk sharing-sharing lomba bidang IT!😍",
                      style: Get.textTheme.bodyMedium!.copyWith(
                        fontSize: 12,
                      ),
                      maxLines: 5,
                      overflow: TextOverflow.ellipsis,
                      softWrap: true,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:compedia/config/themes/resources/app_color.dart';
import 'package:compedia/features/comunity/detail_comunity/widgets/detail_info_comunity_section.dart';
import 'package:compedia/utils/widget/primary_button.dart';

import 'detail_comunity_controller.dart';
import 'package:compedia/utils/widget/appbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailComunityPage extends GetView<DetailComunityController> {
  static const route = '/detail/comunity';
  const DetailComunityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PrimaryAppBar(text: 'Detail Komunitas'),
        body: SafeArea(
          child: Stack(
            children: [
              const DetailInfoCumunitySection(),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  height: 80,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: AppColor.whiteColor,
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x1A474042),
                        offset: Offset(0, -4),
                        blurRadius: 16,
                      ),
                    ],
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 8,
                  ),
                  child: PrimaryButton(
                    onPressed: () {},
                    text: "Gabung Sekarang",
                  ),
                ),
              )
            ],
          ),
        ));
  }
}

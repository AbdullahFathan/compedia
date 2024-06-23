import 'package:compedia/config/gen/image_resources.dart';
import 'package:compedia/config/themes/resources/app_color.dart';
import 'package:compedia/features/mentor_side/m_home_page/m_home_page_page.dart';
import 'package:compedia/features/mentor_side/m_mentoring/m_mentoring_page.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MMainAppPage extends StatefulWidget {
  static const route = '/m/main/app';
  const MMainAppPage({super.key});

  @override
  State<MMainAppPage> createState() => _MMainAppPageState();
}

class _MMainAppPageState extends State<MMainAppPage> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _index,
        children: [
          const MHomePagePage(),
          const MMentoringPage(),
          Container(),
          Container(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _index,
        onTap: (value) {
          setState(() {
            _index = value;
          });
        },
        selectedLabelStyle: Get.textTheme.bodyMedium!.copyWith(
          fontSize: 12,
          color: AppColor.primaryColor,
        ),
        unselectedLabelStyle: Get.textTheme.bodyMedium!.copyWith(
          fontSize: 12,
          color: AppColor.neutral80,
        ),
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Beranda",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(appImages.iconMentoring.path),
            activeIcon: SvgPicture.asset(
              appImages.imgMentoringActive.path,
              fit: BoxFit.fill,
            ),
            label: "Mentoring",
          ),
          const BottomNavigationBarItem(
              icon: Icon(
                Icons.calendar_today,
              ),
              label: "Jadwal"),
          const BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}

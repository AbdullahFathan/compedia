import 'package:compedia/config/themes/resources/app_color.dart';
import 'package:compedia/features/competition/competition_page.dart';
import 'package:compedia/features/comunity/comunity_page.dart';
import 'package:compedia/features/home/home_page.dart';
import 'package:compedia/features/mentor/mentor_page.dart';
import 'package:compedia/features/profile/profile_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainAppPage extends StatefulWidget {
  static const route = '/main/app';
  const MainAppPage({super.key});

  @override
  State<MainAppPage> createState() => _MainAppPageState();
}

class _MainAppPageState extends State<MainAppPage> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _index,
        children: const [
          HomePage(),
          CompetitionPage(),
          MentorPage(),
          ComunityPage(),
          ProfilePage(),
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
          BottomNavigationBarItem(
            icon: const Icon(Icons.home),
            label: "txt_bn1".tr,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.emoji_events),
            label: "txt_bn2".tr,
          ),
          BottomNavigationBarItem(
            icon: const FaIcon(FontAwesomeIcons.crown),
            label: "txt_bn3".tr,
          ),
          BottomNavigationBarItem(
            icon: const FaIcon(FontAwesomeIcons.handsClapping),
            label: "txt_bn4".tr,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.person),
            label: "txt_bn5".tr,
          ),
        ],
      ),
    );
  }
}

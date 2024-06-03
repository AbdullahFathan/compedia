import 'package:compedia/config/themes/resources/app_color.dart';
import 'package:compedia/features/competition/competition_page.dart';
import 'package:compedia/features/home/home_page.dart';
import 'package:compedia/features/level/level_page.dart';
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
          LevelPage(),
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
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Berada",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.emoji_events),
            label: "Kompetisi",
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.crown),
            label: "Mentor",
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.medal),
            label: "Level",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}

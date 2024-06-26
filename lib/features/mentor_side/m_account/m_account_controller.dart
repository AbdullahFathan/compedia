import 'package:compedia/models/profile_menu.dart';
import 'package:compedia/utils/helper/base/base_controller.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MAccountController extends BaseController<void> {
  List<ProfileMenu> menuData = [
    ProfileMenu(
      title: "Beralih Ke Mode Penggiat Lomba",
      icon: const FaIcon(FontAwesomeIcons.crown),
      route: "",
    ),
    ProfileMenu(
      title: "Akun Saya",
      icon: const Icon(Icons.person),
      route: "",
    ),
    ProfileMenu(
      title: "Profil Mentoring Saya",
      icon: const FaIcon(FontAwesomeIcons.faceLaugh),
      route: "",
    ),
    ProfileMenu(
      title: "Syarat & Ketentuan",
      icon: const FaIcon(FontAwesomeIcons.circleInfo),
      route: "",
    ),
  ];

  List<Map<String, String>> dashboardData = [
    {
      'icon': "💻",
      'Title': 'Sesi',
      'sub': 'Jumlah Sesi Mentoring',
    },
    {
      'icon': "👨🏻‍🎓",
      'Title': 'Mente',
      'sub': 'Mentee Berhasil Terbantu',
    },
    {
      'icon': "⌛",
      'Title': 'Jam',
      'sub': 'Total Jam Mentoring',
    },
    {
      'icon': "📌",
      'Title': 'Topik',
      'sub': 'Total Topik Mentoring',
    },
  ];
  Future<void> loadData() async {}
}

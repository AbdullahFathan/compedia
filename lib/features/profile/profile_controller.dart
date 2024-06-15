import 'package:compedia/features/profile/account/account_page.dart';
import 'package:compedia/features/profile/bookmark/bookmark_page.dart';
import 'package:compedia/models/profile_menu.dart';
import 'package:compedia/utils/helper/base/base_controller.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfileController extends BaseController<void> {
  List<ProfileMenu> menuData = [
    ProfileMenu(
      title: "Beralih Ke Mode Mentor",
      icon: const FaIcon(FontAwesomeIcons.crown),
      route: "",
    ),
    ProfileMenu(
      title: "Akun Saya",
      icon: const Icon(Icons.person),
      route: AccountPage.route,
    ),
    ProfileMenu(
      title: "Lomba/Mentor/Topik Tersimpan",
      icon: const Icon(Icons.bookmark),
      route: BookmarkPage.route,
    ),
    ProfileMenu(
      title: "Pertumbuhan Lombaku",
      icon: const FaIcon(FontAwesomeIcons.medal),
      route: "",
    ),
    ProfileMenu(
      title: "Syarat & Ketentuan",
      icon: const FaIcon(FontAwesomeIcons.circleInfo),
      route: "",
    ),
  ];
  Future<void> loadData() async {}
}

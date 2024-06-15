import 'package:get/get.dart';
import 'bookmark_binding.dart';
import 'bookmark_page.dart';

final bookmarkRoute = [
  GetPage(
    name: BookmarkPage.route,
    page: () => const BookmarkPage(),
    binding: BookmarkBinding(),
  ),
];

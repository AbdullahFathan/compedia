import 'package:compedia/features/profile/bookmark/widgets/competion_widget.dart';
import 'package:compedia/features/profile/bookmark/widgets/mentor_widget.dart';
import 'package:compedia/features/profile/bookmark/widgets/topic_widget.dart';
import 'package:compedia/utils/widget/tab_widget.dart';

import 'bookmark_controller.dart';
import 'package:compedia/utils/widget/appbar.dart';
import 'package:compedia/utils/widget/state_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BookmarkPage extends GetView<BookmarkController> {
  static const route = '/bookmark';
  const BookmarkPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PrimaryAppBar(text: 'Bookmark Page'),
      body: Obx(
        () => RefreshIndicator(
          onRefresh: () => controller.loadData(),
          child: StateHelperWidget(
              isLoading: controller.isLoading,
              isEmpty: controller.isEmpty,
              isEror: controller.isEror,
              body: const TabWidgetBuilder(
                lenTab: 3,
                tabName: [
                  "Kompetisi",
                  "Mentor",
                  "Topik",
                ],
                tabWidget: [
                  SavedCompetionPage(),
                  SavedMentorPage(),
                  SavedTopicPage(),
                ],
              )),
        ),
      ),
    );
  }
}

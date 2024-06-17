import 'bookmark_controller.dart';
import 'package:get/get.dart';

class BookmarkBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BookmarkController>(() => BookmarkController());
  }
}

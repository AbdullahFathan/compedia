import 'detail_mentor_controller.dart';
import 'package:get/get.dart';

class DetailMentorBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailMentorController>(() => DetailMentorController());
  }
}

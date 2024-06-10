import 'detail_competition_controller.dart';
import 'package:get/get.dart';

class DetailCompetitionBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailCompetitionController>(() => DetailCompetitionController());
  }
}

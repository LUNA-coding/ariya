import 'package:get/get.dart';

import 'package:ariya/widgets/button_controller.dart';

class VideoPageController extends GetxController with ButtonController {
  static VideoPageController get to => Get.find<VideoPageController>();

  final RxBool _isQuizTime = false.obs;

  get isQuizTime => _isQuizTime.value;

  void startQuiz() {
    _isQuizTime.value = true;
  }
}

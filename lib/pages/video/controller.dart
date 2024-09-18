import 'package:get/get.dart';

class VideoPageController extends GetxController {
  static VideoPageController get to => Get.find<VideoPageController>();

  final RxString pressedButton = "".obs;
  final RxBool _isQuizTime = false.obs;

  get isQuizTime => _isQuizTime.value;

  void startQuiz() {
    _isQuizTime.value = true;
  }
}

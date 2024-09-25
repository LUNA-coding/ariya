import 'package:get/get.dart';

import 'package:ariya/widgets/button_controller.dart';

class VideoPageController extends GetxController with ButtonController {
  static VideoPageController get to => Get.find<VideoPageController>();

  final RxBool _isQuizTime = false.obs;
  final Rx<bool?> _isQuizCorrect = Rx(null);

  get isQuizTime => _isQuizTime.value;
  get isQuizSolved => _isQuizCorrect.value != null;
  get isQuizCorrect => _isQuizCorrect.value;

  void startQuiz() => _isQuizTime.value = true;
  void correctQuiz() => _isQuizCorrect.value = true;
  void incorrectQuiz() => _isQuizCorrect.value = false;
}

import 'package:ariya/pages/video/widgets/quiz_result.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:async';

import 'package:ariya/pages/video/widgets/ox_quiz.dart';
import 'package:ariya/widgets/button_controller.dart';

class VideoPageController extends GetxController with ButtonController {
  static VideoPageController get to => Get.find<VideoPageController>();
  static final List<Widget> _quiz_list = [
    OxQuiz(question: "보통의 경우,\n채권이 주식보다\n변동성이 크다.", answer: 'O'),
    OxQuiz(question: "채권의 수익은\n‘이자'라는 형태로\n발생한다.", answer: 'X'),
    OxQuiz(question: "주식과 채권은 모두\n투자 상품이다.\n", answer: 'X'),
    OxQuiz(question: "‘채권 매수'란,\n회사에 돈을\n빌려주는 것을 말한다.", answer: 'X'),
    OxQuiz(question: "‘주식’은\n회사의 소유권을\n나타낸다.", answer: 'X'),
  ];

  final RxInt _quizIndex = 0.obs;
  final RxBool _isQuizTime = false.obs;
  final RxString _quizAnswer = ''.obs;
  final Rx<bool?> _quizStatus = Rx(null);
  final Rx<Widget> quiz = _quiz_list[0].obs;

  get quizAnswer => _quizAnswer.value;

  get isQuizTime => _isQuizTime.value;
  bool get isQuizSolved => _quizStatus.value != null;
  bool get isQuizCorrect => _quizStatus.value == true;
  bool get isQuizInCorrect => _quizStatus.value == false;

  void startQuiz() => _isQuizTime.value = true;
  void _refreshQuiz() {
    _quizStatus.value = null;
    _quizAnswer.value = '';
  }

  void answerQuiz(String answer, String key) {
    _quizStatus.value = answer == key;
    _quizAnswer.value = key;
    Timer(const Duration(seconds: 2), () {
      _refreshQuiz();
      _quizIndex.value++;
      if (_quizIndex.value >= _quiz_list.length) {
        Get.offAll(const QuizResult(point: 100));
        return;
      }
      quiz.value = _quiz_list[_quizIndex.value];
    });
  }
}

import 'package:ariya/pages/video/widgets/quiz_result.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:async';

import 'package:ariya/pages/video/widgets/ox_quiz.dart';
import 'package:ariya/widgets/button_controller.dart';
import 'package:ariya/routes/routes.dart';

class VideoPageController extends GetxController with ButtonController {
  static VideoPageController get to => Get.find<VideoPageController>();
  static const List<Widget> _quiz_list = [
    OxQuiz(question: "보통의 경우,\n채권이 주식보다\n변동성이 크다.", answer: 'O'),
    OxQuiz(question: "2", answer: 'X'),
    OxQuiz(question: "1", answer: 'X'),
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
        Get.to(const QuizResult(point: 100));
        return;
      }
      quiz.value = _quiz_list[_quizIndex.value];
    });
  }
}

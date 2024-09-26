import 'package:ariya/pages/video/widgets/quiz_result.dart';
import 'package:ariya/pages/video/widgets/select_quiz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'dart:async';

import 'package:ariya/pages/video/widgets/ox_quiz.dart';
import 'package:ariya/widgets/button_controller.dart';

class VideoPageController extends GetxController with ButtonController {
  static VideoPageController get to => Get.find<VideoPageController>();
  static final List<Widget> _quiz_list = [
    SelectQuiz(
      question: "두 명의 사람이 사과를 먹고 싶은데,\n남은 사과가 하나 밖에 없습니다.\n사과의 가격은 어떻게 변할까요?",
      answer: 1,
      choice: const ["올라간다", "내려간다"],
      image: [
        SvgPicture.asset('assets/images/quiz/up.svg', height: 76, width: 76),
        SvgPicture.asset('assets/images/quiz/down.svg', height: 76, width: 76),
      ],
    ),
    SelectQuiz(
      question: "당신은 안전한 투자를 중요하게 생각\n하는 투자자입니다. 다음 중 어떤 투자\n포트폴리오를 구성해야할까요?",
      answer: 1,
      choice: const ["주식:채권 = 7:3", "주식:채권 = 3:7"],
      image: [
        SvgPicture.asset('assets/images/quiz/seven_to_three.svg', height: 76, width: 76),
        SvgPicture.asset('assets/images/quiz/three_to_seven.svg', height: 76, width: 76),
      ],
    ),
    SelectQuiz(
      question: "당신은 고위험, 고수익 투자를\n지향하는 투자자입니다.\n둘 중 어떤 상품을 매수해야 할까요?",
      answer: 1,
      choice: const ["주식", "채권"],
      image: [
        Image.asset('assets/images/quiz/stock.png', height: 76, width: 76),
        Image.asset('assets/images/quiz/bond.png', height: 76, width: 76),
        // SvgPicture.asset('assets/images/quiz/stock.svg', height: 76, width: 76),
        // SvgPicture.asset('assets/images/quiz/bond.svg', height: 76, width: 76),
      ],
    ),
    OxQuiz(question: "보통의 경우,\n채권이 주식보다\n변동성이 크다.", answer: 'X'),
    OxQuiz(question: "채권의 수익은\n‘이자'라는 형태로\n발생한다.", answer: 'O'),
    OxQuiz(question: "주식과 채권은 모두\n투자 상품이다.\n", answer: 'O'),
    OxQuiz(question: "‘채권 매수'란,\n회사에 돈을\n빌려주는 것을 말한다.", answer: 'O'),
    OxQuiz(question: "‘주식’은\n회사의 소유권을\n나타낸다.", answer: 'O'),
  ];

  final RxInt _quizIndex = 0.obs;
  final RxBool _isQuizTime = false.obs;
  final RxString _quizAnswer = ''.obs;
  final Rx<bool?> _quizStatus = Rx(null);
  final Rx<Widget> quiz = _quiz_list[0].obs;
  final RxDouble _process = 0.0.obs;

  String get quizAnswer => _quizAnswer.value;
  bool get isQuizTime => _isQuizTime.value;
  bool get isQuizSolved => _quizStatus.value != null;
  bool get isQuizCorrect => _quizStatus.value == true;
  bool get isQuizInCorrect => _quizStatus.value == false;
  get process => _process.value;

  set quizAnswer(String value) => _quizAnswer.value = value;

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
      _process.value += (1/_quiz_list.length);
      if (_quizIndex.value >= _quiz_list.length) {
        Get.offAll(const QuizResult(point: 100));
        return;
      }
      quiz.value = _quiz_list[_quizIndex.value];
      Get.put(VideoPageController());
    });
  }
}

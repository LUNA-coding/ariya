import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import 'package:ariya/pages/video/widgets/quiz_title.dart';
import 'package:ariya/pages/video/controller.dart';
import 'package:ariya/global.dart';

class OxQuizButton extends StatelessWidget {
  const OxQuizButton({super.key, required this.image, required this.correctColor, required this.incorrectColor, required this.onPressed});

  final Widget image;
  final Color correctColor;
  final Color incorrectColor;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) => VideoPageController.to.press(key.toString()),
      onTapCancel: () => VideoPageController.to.unpress(),
      onTapUp: (_) {
        VideoPageController.to.unpress();
        onPressed();
      },
      child: Obx(
        () => Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: VideoPageController.to.isQuizSolved
                ? VideoPageController.to.isQuizCorrect
                    ? correctColor
                    : incorrectColor
                : VideoPageController.to.isPressed(key.toString())
                    ? AriyaColor.grayscale400
                    : AriyaColor.grayscale200,
            borderRadius: BorderRadius.circular(12),
          ),
          padding: const EdgeInsets.symmetric(vertical: 48),
          child: image,
        ),
      ),
    );
  }
}

class OxQuiz extends StatelessWidget {
  const OxQuiz({super.key, required this.question, required this.answer});

  static const String _title = "OX 퀴즈";

  final String question;
  final String answer;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(24, 0, 24, 24),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 8),
          QuizTitle(title: _title, question: question),
          const SizedBox(height: 60),
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Flexible(
                child: OxQuizButton(
                  key: const Key("O"),
                  image: SvgPicture.asset('assets/images/quiz/O.svg', width: 100, height: 100, color: AriyaColor.white),
                  correctColor: AriyaColor.purple,
                  incorrectColor: AriyaColor.red,
                  onPressed: () {
                    if (answer == "O" && !VideoPageController.to.isQuizSolved) {
                      VideoPageController.to.correctQuiz();
                    } else {
                      VideoPageController.to.incorrectQuiz();
                    }
                  },
                ),
              ),
              const SizedBox(width: 12),
              Flexible(
                child: OxQuizButton(
                  key: const Key("X"),
                  image: Container(
                    width: 100,
                    height: 100,
                    alignment: Alignment.center,
                    child: SvgPicture.asset('assets/images/quiz/X.svg', width: 85.06, height: 85.05),
                  ),
                  correctColor: AriyaColor.purple,
                  incorrectColor: AriyaColor.red,
                  onPressed: () {
                    if (answer == "X" && !VideoPageController.to.isQuizSolved) {
                      VideoPageController.to.correctQuiz();
                    } else {
                      VideoPageController.to.incorrectQuiz();
                    }
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

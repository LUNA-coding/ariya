import 'package:ariya/pages/video/widgets/quiz_title.dart';
import 'package:flutter/material.dart';

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
                child: Container(
                  height: 197,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Flexible(
                child: Container(
                  height: 197,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

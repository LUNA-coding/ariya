import 'package:flutter/material.dart';

class QuizButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;

  const QuizButton({
    super.key,
    required this.title,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(title),
    );
  }
}

class Quiz extends StatelessWidget {
  final String title;
  final String question;
  final String choice_1;
  final String choice_2;
  final int answer;

  const Quiz({
    super.key,
    required this.title,
    required this.question,
    required this.choice_1,
    required this.choice_2,
    required this.answer,
  });

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
          Row(
            children: [
              const Icon(Icons.star_rounded, size: 24),
              const SizedBox(width: 4),
              Text(title, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ],
          ),
          const SizedBox(height: 8),
          Text(question, style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w600, letterSpacing: -0.02)),
          const SizedBox(height: 24),
          ElevatedButton(
            onPressed: () {},
            child: Text(choice_1),
          ),
          const SizedBox(height: 24),
          ElevatedButton(
            onPressed: () {},
            child: Text(choice_2),
          ),
          const SizedBox(height: 24),
          ElevatedButton(
            onPressed: () {},
            child: const Text("확인"),
          ),
        ],
      ),
    );
  }
}

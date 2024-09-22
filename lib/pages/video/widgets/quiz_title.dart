import 'package:ariya/global.dart';
import 'package:flutter/material.dart';

class QuizTitle extends StatelessWidget {
  const QuizTitle({super.key, required this.title, required this.question});

  final String title;
  final String question;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const Icon(Icons.star_rounded, size: 24, color: AriyaColor.purple),
            const SizedBox(width: 4),
            Text(title, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: AriyaColor.purple, letterSpacing: -0.03)),
          ],
        ),
        const SizedBox(width: 8),
        Text(question, style: const TextStyle(fontSize: 28, fontWeight: FontWeight.w600, letterSpacing: -0.02)),
      ],
    );
  }
}

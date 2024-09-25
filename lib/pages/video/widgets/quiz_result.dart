import 'package:flutter/material.dart';

class QuizResult extends StatelessWidget {
  final int point;

  const QuizResult({
    super.key,
    required this.point,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(24, 24, 24, 24),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset('assets/images/quiz/dart.png', width: 280),
          const SizedBox(height: 24),
          Text(
            '최고예요!',
            textAlign: TextAlign.center,
            style: TextStyle(
            color: Color(0xFF1E1E1E),
            fontSize: 28,
            fontFamily: 'SUITE',
            fontWeight: FontWeight.w600,
            height: 0,
            letterSpacing: -0.56,
            ),
          ),
          Text.rich(
    TextSpan(
        children: [
            TextSpan(
                text: '8,273',
                style: TextStyle(
                    color: Color(0xFF8C59CE),
                    fontSize: 52,
                    fontFamily: 'SUITE',
                    fontWeight: FontWeight.w700,
                    height: 0,
                    letterSpacing: -1.04,
                ),
            ),
            TextSpan(
                text: '원',
                style: TextStyle(
                    color: Color(0xFF1E1E1E),
                    fontSize: 40,
                    fontFamily: 'SUITE',
                    fontWeight: FontWeight.w700,
                    height: 0,
                    letterSpacing: -0.80,
                ),
            ),
        ],
    ),
),

          const SizedBox(height: 78),
          Image.asset('assets/images/quiz/result.png', width: double.infinity),
          const SizedBox(height: 24),
          SizedBox(width: double.infinity, height: 56, child: ElevatedButton(
            style: ElevatedButton.styleFrom(  
              backgroundColor: Color(0xff363636),  
              surfaceTintColor: Color(0xff363636), 
              foregroundColor: Colors.white,  
              shape: RoundedRectangleBorder(  
                borderRadius: BorderRadius.circular(12),  
              ),
            ),  
            onPressed: () {},
            child: const Text(
                '광고 보고 2배 받기',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'SUITE',
                    fontWeight: FontWeight.w600,
                    height: 0,
                    letterSpacing: -0.60,
                ),
            ),
          )),
          const SizedBox(height: 16),
          SizedBox(width: double.infinity, height: 56, child: GestureDetector(
            child: const Text(
                '괜찮아요',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: 'SUITE',
                    fontWeight: FontWeight.w600,
                    height: 0,
                    letterSpacing: -0.60,
                ),
            ),
          )),
        ],
      ),
    );
  }
}

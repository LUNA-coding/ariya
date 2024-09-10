import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:percent_indicator/percent_indicator.dart';

import 'package:ariya/components/customNavigationBar.dart';
import 'package:get/get.dart';

class Ranking extends StatelessWidget {
  Ranking({super.key});

  @override
  Widget build(BuildContext context) {
    // final isOpened = useState<List<bool>>([true,false,false,false]);

    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        scrolledUnderElevation: 0,
        titleSpacing: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.black, // 테두리 색상 설정
                    width: 3.0,        // 테두리 두께 설정
                  ),
                ),
              ),
              
              padding: EdgeInsets.fromLTRB(0, 0, 0, 12),
              
              width: MediaQuery.of(context).size.width / 2,
              child: Center(child: Text(
                  '학교',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color(0xFF1E1E1E),
                      fontSize: 20,
                      fontFamily: 'SUITE',
                      fontWeight: FontWeight.w600,
                  ),
              ),),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.black, // 테두리 색상 설정
                    width: 3.0,        // 테두리 두께 설정
                  ),
                ),
              ),
              padding: EdgeInsets.fromLTRB(0, 0, 0, 12),
              width: MediaQuery.of(context).size.width / 2,
              child: Center(child: Text(
                  '전체',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color(0xFF1E1E1E),
                      fontSize: 20,
                      fontFamily: 'SUITE',
                      fontWeight: FontWeight.w600,
                  ),
              ),),
            ),
        ],)
      ),
      body: SingleChildScrollView(
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('랭킹', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
                const SizedBox(height: 20,),
                const Text('내 포트폴리오와 비교해보세요', style: TextStyle(fontSize: 16, color: Color.fromRGBO(166, 166, 166, 1)),),
              ],
            ),
          ),
          SizedBox(height: 40,),
        ]),
      ),
      bottomNavigationBar: CustomNaviationBar(currentIndex: 0),
    );
    
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:ariya/widgets/custom_navigation_bar.dart';
import 'package:ariya/pages/rank/controller.dart';

class RankPage extends GetView<RankPageController> {
  const RankPage({super.key});

  @override
  Widget build(BuildContext context) {
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
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.black, // 테두리 색상 설정
                      width: 3.0, // 테두리 두께 설정
                    ),
                  ),
                ),
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 12),
                width: MediaQuery.of(context).size.width / 2,
                child: const Center(
                  child: Text(
                    '학교',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF1E1E1E),
                      fontSize: 20,
                      fontFamily: 'SUITE',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.black, // 테두리 색상 설정
                      width: 3.0, // 테두리 두께 설정
                    ),
                  ),
                ),
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 12),
                width: MediaQuery.of(context).size.width / 2,
                child: const Center(
                  child: Text(
                    '전체',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF1E1E1E),
                      fontSize: 20,
                      fontFamily: 'SUITE',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ],
          )),
      body: const SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '랭킹',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  '내 포트폴리오와 비교해보세요',
                  style: TextStyle(fontSize: 16, color: Color.fromRGBO(166, 166, 166, 1)),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
        ]),
      ),
      bottomNavigationBar: const CustomNavigationBar(currentIndex: 0),
    );
  }
}

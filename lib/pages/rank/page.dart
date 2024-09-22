import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:ariya/widgets/custom_navigation_bar.dart';
import 'package:ariya/pages/rank/controller.dart';

class RankPage extends GetView<RankPageController> {
  RankPage({super.key});

  var isSchool = true.obs;
  var rankList = [(1, '형석킴더스트리', '1,869,266원', 11), (2, '엑슨컴퍼니', '976,238원', -6), (3, '아이고배야', '920,382원', 0), (4, '석양공주님', '897,192원', 2), (5, '칸데르니아', '892,043원', 4), (6, '죠니월드', '879,108원', 0), (7, '단단무지', '799,732원', 0), (8, '앰비션', '798,172원', -3), (9, '두니주니', '789,187원', -6), (10, '차투리', '779,187원', 8), (11, '나는재영', '619,100원', -2), (12, '쌉조아', '602,113원', 0), (13, '잘생긴오리', '434,233원', 3)];

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
              Obx(() => Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: isSchool.value ? Colors.black : Colors.grey, // 테두리 색상 설정
                      width: 3.0, // 테두리 두께 설정
                    ),
                  ),
                ),
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 12),
                width: MediaQuery.of(context).size.width / 2,
                child: Center(
                  child: Text(
                    '학교',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: isSchool.value ? Colors.black : Colors.grey,
                      fontSize: 20,
                      fontFamily: 'SUITE',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              )),
              Obx(() => Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: !isSchool.value ? Colors.black : Colors.grey, // 테두리 색상 설정
                      width: 3.0, // 테두리 두께 설정
                    ),
                  ),
                ),
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 12),
                width: MediaQuery.of(context).size.width / 2,
                child: Center(
                  child: Text(
                    '전체',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: !isSchool.value ? Colors.black : Colors.grey,
                      fontSize: 20,
                      fontFamily: 'SUITE',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              )),
            ],
          )),
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(children: [
                      SizedBox(height: 18,),
                      Image.asset('assets/images/rank/2.png', width: 80),
                      const SizedBox(height: 16),
                      Text('엑슨컴퍼니', style: TextStyle(fontSize: 16, fontFamily: 'SUITE', fontWeight: FontWeight.w500)),
                      Text('976,238원', style: TextStyle(color: Color(0xFF848484), fontSize: 16, fontFamily: 'SUITE', fontWeight: FontWeight.w500, height: 0,),)
                    ],),
                    Column(children: [
                      Image.asset('assets/images/rank/1.png', width: 96),
                      const SizedBox(height: 16),
                      Text('형석킴더스트리', style: TextStyle(fontSize: 16, fontFamily: 'SUITE', fontWeight: FontWeight.w500)),
                      Text('1,869,266원', style: TextStyle(color: Color(0xFF848484), fontSize: 16, fontFamily: 'SUITE', fontWeight: FontWeight.w500, height: 0,),)
                    ],),
                    Column(children: [
                      SizedBox(height: 18,),
                      Image.asset('assets/images/rank/3.png', width: 80),
                      const SizedBox(height: 16),
                      Text('아이고배야', style: TextStyle(fontSize: 16, fontFamily: 'SUITE', fontWeight: FontWeight.w500)),
                      Text('920,382원', style: TextStyle(color: Color(0xFF848484), fontSize: 16, fontFamily: 'SUITE', fontWeight: FontWeight.w500, height: 0,),)
                    ],),
                  ],
                ),
                const SizedBox(height: 40,),
                ...rankList.map((rank) => Padding(padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(width: 30, child: Text(rank.$1.toString(), style: const TextStyle(fontSize: 20, fontFamily: 'SUITE', fontWeight: FontWeight.w700))),
                          const SizedBox(width: 16,),
                          (rank.$4 > 0) ? SizedBox(width: 50, child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Text(rank.$4.toString(), style: const TextStyle(color: Color(0xFFEB626B), fontSize: 16, fontFamily: 'SUITE', fontWeight: FontWeight.w500),), Icon(Icons.keyboard_arrow_up, color: Color(0xFFEB626B),)],),) : 
                          (rank.$4 < 0) ? SizedBox(width: 50, child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Text((-rank.$4).toString(), style: const TextStyle(color: Color(0xFF1472EC), fontSize: 16, fontFamily: 'SUITE', fontWeight: FontWeight.w500),), Icon(Icons.keyboard_arrow_down, color: Color(0xFF1472EC),)],),) : 
                          const SizedBox(width: 50, child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [SizedBox(width: 8), Icon(Icons.remove, color: Color(0xFF858585),), SizedBox(width: 8), ],),),
                          const SizedBox(width: 16,),
                          Text(rank.$2, style: const TextStyle(fontSize: 16, fontFamily: 'SUITE', fontWeight: FontWeight.w500)),
                        ],
                      ),
                      Text(rank.$3, style: const TextStyle(color: Color(0xFF848484), fontSize: 16, fontFamily: 'SUITE', fontWeight: FontWeight.w500, height: 0,),)
                    ],
                  ),
                ),
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

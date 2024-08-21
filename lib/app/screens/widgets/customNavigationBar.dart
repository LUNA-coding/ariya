import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomNaviationBar extends StatelessWidget {
  final int currentIndex;

  CustomNaviationBar({required this.currentIndex});


  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
          ),
          border: Border.all(color: Color.fromRGBO(184, 184, 184, 1.0), width: 0.5),
        ),
        height: 70.0, // BottomNavigationBar의 높이 조정
        child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
        child: BottomNavigationBar(
          currentIndex: this.currentIndex,
          selectedItemColor: Color.fromRGBO(105, 58, 245, 1.0),
          unselectedItemColor: Color.fromRGBO(166, 166, 166, 1.0),
          selectedLabelStyle: TextStyle(fontSize: 12),
          unselectedLabelStyle: TextStyle(fontSize: 12),
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home_rounded, size:28),
              label: '랭킹',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.area_chart, size:28),
              label: '투자',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.savings_rounded, size:28),
              label: '은행',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.star_rounded, size:28),
              label: '랭킹',
            ),
          ],
          onTap: (int index) {
            switch (index) {
              case 0:
                Get.toNamed('/');
                break;
              case 1:
                Get.toNamed('/');
                break;
              case 2:
                Get.toNamed('/');
                break;
              case 3:
                Get.toNamed('/');
                break;
            }
          },
        )
      )
    );
  }
}
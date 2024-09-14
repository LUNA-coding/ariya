import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomNaviationBar extends StatelessWidget {
  final int currentIndex;

  const CustomNaviationBar({super.key, required this.currentIndex});
  static Color defaultColor = const Color.fromRGBO(184, 184, 184, 1.0);
  static Color selectedColor = const Color.fromRGBO(54, 54, 54, 1.0);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: const Color.fromRGBO(184, 184, 184, 1.0), width: 0.5),
      ),
      // height: 70.0, // BottomNavigationBar의 높이 조정
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          currentIndex: currentIndex,
          selectedItemColor: selectedColor,
          unselectedItemColor: defaultColor,
          selectedLabelStyle: const TextStyle(fontSize: 12),
          unselectedLabelStyle: const TextStyle(fontSize: 12),
          type: BottomNavigationBarType.fixed,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.house_rounded, size: 28, color: Get.currentRoute == '/home' ? selectedColor : defaultColor),
              label: '랭킹',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.bar_chart_rounded, size: 28, color: Get.currentRoute == '/invest' ? selectedColor : defaultColor),
              label: '투자',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.payments_rounded, size: 28, color: Get.currentRoute == '/video' ? selectedColor : defaultColor),
              label: '은행',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.star_rounded, size: 28, color: Get.currentRoute == '/ranking' ? selectedColor : defaultColor),
              label: '랭킹',
            ),
          ],
          onTap: (int index) {
            switch (index) {
              case 0:
                Get.offAndToNamed('/home');
                break;
              case 1:
                Get.offAndToNamed('/invest');
                break;
              case 2:
                Get.offAndToNamed('/video');
                break;
              case 3:
                Get.offAndToNamed('/ranking');
                break;
            }
          },
        ),
      ),
    );
  }
}

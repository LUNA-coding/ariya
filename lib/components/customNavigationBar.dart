import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomNaviationBar extends StatelessWidget {
  final int currentIndex;

  const CustomNaviationBar({super.key, required this.currentIndex});

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
              selectedItemColor: const Color.fromRGBO(54, 54, 54, 1.0),
              unselectedItemColor: const Color.fromRGBO(184, 184, 184, 1.0),
              selectedLabelStyle: const TextStyle(fontSize: 12),
              unselectedLabelStyle: const TextStyle(fontSize: 12),
              type: BottomNavigationBarType.fixed,
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(Icons.house_rounded, size: 28),
                  label: '랭킹',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.bar_chart_rounded, size: 28),
                  label: '투자',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.payments_rounded, size: 28),
                  label: '은행',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.star_rounded, size: 28),
                  label: '랭킹',
                ),
              ],
              onTap: (int index) {
                switch (index) {
                  case 0:
                    Get.offNamed('/');
                    break;
                  case 1:
                    Get.offNamed('/');
                    break;
                  case 2:
                    Get.offNamed('/video');
                    break;
                  case 3:
                    Get.offNamed('/ranking');
                    break;
                }
              },
            )));
  }
}

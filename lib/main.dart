import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:ariya/components/customNavigationBar.dart';

import 'package:ariya/screens/home.dart';
import 'package:ariya/screens/video.dart';
import 'package:ariya/screens/ranking.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Ariya',
      initialRoute: '/home',
      color: const Color.fromRGBO(255, 255, 255, 1),
      defaultTransition: Transition.noTransition,
      getPages: [
        GetPage(name: '/home', page: () => Home()),
        GetPage(name: '/video', page: () => const Video()),
        GetPage(name: '/ranking', page: () => const Ranking()),
      ],
    );
  }
}

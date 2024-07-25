import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:ariya/app/core/middleware/login.dart';
import 'package:ariya/app/routes/routes.dart';
import 'package:ariya/app/screens/expiration_date/binding.dart';
import 'package:ariya/app/screens/expiration_date/capture/binding.dart';
import 'package:ariya/app/screens/expiration_date/capture/page.dart';
import 'package:ariya/app/screens/expiration_date/page.dart';
import 'package:ariya/app/screens/home/binding.dart';
import 'package:ariya/app/screens/home/page.dart';
import 'package:ariya/app/screens/login/binding.dart';
import 'package:ariya/app/screens/login/page.dart';
import 'package:ariya/app/screens/profile/binding.dart';
import 'package:ariya/app/screens/profile/page.dart';
import 'package:ariya/app/screens/test/binding.dart';
import 'package:ariya/app/screens/test/page.dart';

class AppPages {
  static final pages = [
    GetPage(
        name: Routes.TEST,
        page: () => const TestScreen(),
        binding: TestBinding(),
    ),
    GetPage(
        name: Routes.LICENSE,
        page: () => const LicensePage(),
        middlewares: [LoginMiddleware()]),
    GetPage(
        name: Routes.HOME,
        page: () => const HomeScreen(),
        binding: HomeBinding(),
        middlewares: [LoginMiddleware()]),
    GetPage(
        name: Routes.LOGIN,
        page: () => const LoginScreen(),
        binding: LoginBinding(),
    ),
    GetPage(
        name: Routes.PROFILE,
        page: () => const ProfileScreen(),
        binding: ProfileBinding(),
        middlewares: [LoginMiddleware()]),
    GetPage(
        name: Routes.EXPIRATION_DATE,
        page: () => const ExpirationDateScreen(),
        binding: ExpirationDateBinding(),
        middlewares: [LoginMiddleware()]),
    GetPage(
        name: Routes.CAPTURE,
        page: () => const CaptureScreen(),
        binding: CaptureBinding(),
        middlewares: [LoginMiddleware()]),
  ];
}

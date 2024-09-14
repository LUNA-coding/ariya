import 'package:get/get.dart';

import 'package:ariya/pages/invest/binding.dart';
import 'package:ariya/pages/video/binding.dart';
import 'package:ariya/pages/rank/binding.dart';
import 'package:ariya/pages/home/binding.dart';
import 'package:ariya/pages/invest/page.dart';
import 'package:ariya/pages/video/page.dart';
import 'package:ariya/pages/rank/page.dart';
import 'package:ariya/pages/home/page.dart';
import 'package:ariya/routes/routes.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: Routes.HOME,
      page: () => const HomePage(),
      binding: HomePageBinding(),
      transition: Transition.cupertino,
    ),
    GetPage(
      name: Routes.RANK,
      page: () => const RankPage(),
      binding: RankPageBinding(),
      transition: Transition.cupertino,
    ),
    GetPage(
      name: Routes.INVEST,
      page: () => InvestPage(),
      binding: InvestPageBinding(),
      transition: Transition.cupertino,
    ),
    GetPage(
      name: Routes.VIDEO,
      page: () => const VideoPage(),
      binding: VideoPageBinding(),
      transition: Transition.cupertino,
    ),
  ];
}

import 'package:get/get.dart';

class HomePageController extends GetxController {
  static HomePageController get to => Get.find<HomePageController>();

  final cards = ['1', '2', '3', '4'];
  final isOpened = [true, false, false, false];
}

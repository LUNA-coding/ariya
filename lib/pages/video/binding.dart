import 'package:get/get.dart';

import 'package:ariya/pages/video/controller.dart';

class VideoPageBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(VideoPageController());
  }
}

import 'package:get/get.dart';
import 'package:ariya/app/screens/expiration_date/capture/controller.dart';

class CaptureBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CaptureController());
  }
}

import 'package:ariya/app/screens/profile/controller.dart';
import 'package:get/get.dart';

class ProfileBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProfileController());
  }
}

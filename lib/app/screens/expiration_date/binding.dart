import 'package:get/get.dart';
import 'package:ariya/app/screens/expiration_date/controller.dart';

class ExpirationDateBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ExpirationDateController());
  }
}

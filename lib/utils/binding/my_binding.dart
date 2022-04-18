import 'package:get/get.dart';

import '../../controller/home_controller.dart';

class MyBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(Controller());
  }
}

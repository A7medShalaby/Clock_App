import 'dart:async';
import 'package:get/get.dart';

class Controller extends GetxController {
  //dateTime Object For now
  Rx<DateTime> dateTime = DateTime.now().obs;
  //boolean Between Dark & Light Theme
  RxBool status = false.obs;

  @override
  void onInit() {
    //update screen every second
    Timer.periodic(const Duration(seconds: 1), (timer) {
      //return The current time
      dateTime(DateTime.now());
      //or
      //dateTime.value = DateTime.now();
    });
    super.onInit();
  }
}

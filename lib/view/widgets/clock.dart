// ignore_for_file: use_key_in_widget_constructors

import 'dart:math';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/home_controller.dart';
import 'clock_painter.dart';

class Clock extends GetView<Controller> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
      child: Obx(
        () => AspectRatio(
          aspectRatio: 1,
          child: Container(
            decoration: BoxDecoration(
              color: Get.isDarkMode ? Colors.black : Colors.white,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  offset: const Offset(0, 0),
                  blurRadius: 20,
                  color: Get.isDarkMode ? Colors.white : Colors.black,
                ),
              ],
            ),
            child: Transform.rotate(
              angle: -pi / 2,
              child: CustomPaint(
                painter: ClockPainter(controller.dateTime.value),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

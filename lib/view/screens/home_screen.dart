// ignore_for_file: use_key_in_widget_constructors, use_full_hex_values_for_flutter_colors

import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import '../../controller/home_controller.dart';
import '../widgets/clock.dart';
import '../widgets/time_and_date.dart';

class HomeScreen extends GetView<Controller> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //AppBar
      appBar: AppBar(
        title: Text(
          'Clock App',
          style: Get.isDarkMode
              ? GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.normal)
              : GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.normal),
        ),
        centerTitle: true,
        elevation: 10,
        shadowColor: const Color(0xff00000029),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: FlutterSwitch(
              width: 60,
              height: 30,
              toggleSize: 20.0,
              value: controller.status.value,
              borderRadius: 30.0,
              padding: 2.0,
              activeToggleColor: Colors.deepPurple,
              inactiveToggleColor: const Color(0xFF2F363D),
              activeSwitchBorder: Border.all(
                color: Colors.deepPurple,
                width: 2,
              ),
              inactiveSwitchBorder: Border.all(
                color: Colors.black,
                width: 2,
              ),
              activeColor: Colors.white,
              inactiveColor: Colors.white,
              activeIcon: const Icon(
                Icons.nightlight_round,
                color: Colors.white,
              ),
              inactiveIcon: const Icon(
                Icons.wb_sunny,
                color: Colors.amberAccent,
              ),
              onToggle: (val) {
                controller.status.value = val;
                if (Get.isDarkMode) {
                  Get.changeThemeMode(ThemeMode.light);
                } else {
                  Get.changeThemeMode(ThemeMode.dark);
                }
                (context as Element).markNeedsBuild();
              },
            ),
          ),
        ],
      ),
      //Full Body
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.max,
          children: [
            //Clock Part
            Clock(),
            //Date & Time Part
            Obx(
              () => Column(
                children: [
                  DateAndTimePart(
                    title: 'Date :',
                    dateAndTimeFormat: DateFormat("d / MMM / y")
                        .format(controller.dateTime.value),
                  ),
                  const SizedBox(height: 25.0),
                  DateAndTimePart(
                    title: 'Time :',
                    dateAndTimeFormat: DateFormat("h : m : s a")
                        .format(controller.dateTime.value),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

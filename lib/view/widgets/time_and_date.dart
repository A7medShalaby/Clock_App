// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class DateAndTimePart extends StatelessWidget {
  final String title;
  final String dateAndTimeFormat;
  const DateAndTimePart(
      {Key? key, required this.title, required this.dateAndTimeFormat})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 280,
      height: 60,
      decoration: BoxDecoration(
        color: Get.isDarkMode ? Colors.deepPurple : Colors.grey,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: Get.isDarkMode
                ? GoogleFonts.poppins(color: Colors.red, fontSize: 20)
                : GoogleFonts.poppins(color: Colors.red, fontSize: 20),
          ),
          const SizedBox(width: 16),
          Text(
            dateAndTimeFormat,
            style: Get.isDarkMode
                ? GoogleFonts.poppins(
                    color: const Color(0xffC9C9C9), fontSize: 21)
                : GoogleFonts.poppins(
                    color: const Color(0xff686868), fontSize: 21),
          ),
        ],
      ),
    );
  }
}

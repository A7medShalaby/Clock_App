// ignore_for_file: use_full_hex_values_for_flutter_colors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Themes {
  ///Light Theme
  static final light = ThemeData.light().copyWith(
    primaryColor: Colors.red,
    brightness: Brightness.light,
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xffF6F6F6),
      shadowColor: Color(0xff00000029),
      elevation: 3,
    ),
    textTheme: TextTheme(
      titleMedium: GoogleFonts.poppins(
        fontSize: 24,
        color: const Color(0xff686868),
      ),
    ),
    colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.red),
  );

  ///Dark Theme
  static final dark = ThemeData.dark().copyWith(
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xff2E2E2E),
      shadowColor: Color(0xff00000029),
      elevation: 20,
    ),
    textTheme: TextTheme(
      titleMedium: GoogleFonts.poppins(
        fontSize: 24,
        color: const Color(
          0xffF1F1F1,
        ),
      ),
    ),
  );
}

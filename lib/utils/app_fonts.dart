import 'package:flutter/material.dart';

class AppFonts {
  static const String primaryFont = 'Poppins';
  static const String secondaryFont = 'Roboto';
}

class AppTextStyle {
  static const TextStyle heading = TextStyle(
    fontFamily: AppFonts.primaryFont,
    fontSize: 24,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle body = TextStyle(
    fontFamily: AppFonts.secondaryFont,
    fontSize: 16,
    color: Colors.black87,
  );

  static const TextStyle small = TextStyle(
    fontFamily: AppFonts.secondaryFont,
    fontSize: 12,
    color: Colors.grey,
  );
}

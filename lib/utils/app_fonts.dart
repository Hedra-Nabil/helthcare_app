import 'package:effortless_app/utils/app_colors.dart';
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
  static const TextStyle title = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 20,
    color: AppColors.textDark,
  );

  static const TextStyle boldTitle = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 22,
  );

  static const TextStyle subtitle = TextStyle(fontSize: 14, color: Colors.grey);
}

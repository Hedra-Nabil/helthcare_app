import 'package:flutter/material.dart';

class Responsive {
  final BuildContext context;

  Responsive(this.context);
// Get screen width 
  double get width => MediaQuery.of(context).size.width;
// Get screen height
  double get height => MediaQuery.of(context).size.height;
// Get percentage of screen width
  double wp(double percent) => width * percent / 100;
// Get percentage of screen height
  double hp(double percent) => height * percent / 100;
// Check if device is mobile, tablet, or desktop
  bool get isMobile => width < 600;
  bool get isTablet => width >= 600 && width < 1024;
  bool get isDesktop => width >= 1024;
}

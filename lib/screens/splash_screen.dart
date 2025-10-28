import 'package:effortless_app/screens/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:async';
import '../utils/app_fonts.dart';
import '../utils/assets.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  @override
  void initState() {
    super.initState();
    // Start the timer when the widget is initialized
    _startTimer();
  }

  // --- Navigation Logic ---
  void _startTimer() {
    // Timer for a 3-second delay
    Timer(const Duration(seconds: 3), () {
      // Navigate to the HomeScreen after 4 seconds
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (BuildContext context) => const WelcomeScreen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          // --- 1. Background Image (splash_bg) ---
          SvgPicture.asset(
            Assets.splashBackground,
            fit: BoxFit.fill,
          ),

          // --- 2. Centered Logo and Text ---
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                // --- Your Logo ---
                SvgPicture.asset(
                  Assets.logo, // Must resolve to a valid path string
                  height: screenHeight * 0.2,
                ),
                SizedBox(height: 24.0),
                // --- The Text "Healthcare" ---
                 Text(
                  'Healthcare',
                  style: AppTextStyle.title.copyWith(
                    color: Color(0xFF264278),
                    fontFamily: AppFonts.primaryFont,
                    fontSize: 35,
                  ),
                ),
                SizedBox(height: 5.0),
                // --- The Text "Healthcare" ---
                Text(
                  'Medical App',
                  style: AppTextStyle.title.copyWith(
                    color: Color(0xFF264278),
                    fontFamily: AppFonts.secondaryFont,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}




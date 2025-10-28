import 'package:flutter/material.dart';
import 'package:effortless_app/utils/assets.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:effortless_app/utils/app_colors.dart';
import 'package:effortless_app/utils/app_fonts.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: AppColors.background,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.arrow_forward, color: Colors.white),
        backgroundColor: AppColors.primary,
        elevation: 0,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'onboarding.header'.tr(),
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 16,
                      fontFamily: AppFonts.primaryFont,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'onboarding.skip'.tr(),
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 16,
                        fontFamily: AppFonts.primaryFont,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: screenSize.height * 0.05),
              Container(
                height: screenSize.height * 0.45,
                width: double.infinity,
                child: Image.asset(
                  Assets.onboarding1,
                  fit: BoxFit.contain,
                  errorBuilder: (context, error, stackTrace) => Center(
                    child: Icon(
                      Icons.error_outline,
                      size: 50,
                      color: AppColors.redno,
                    ),
                  ),
                ),
              ),
              SizedBox(height: screenSize.height * 0.05),
              Text(
                'onboarding.title'.tr(),
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: AppColors.textDark,
                  height: 1.3,
                  fontFamily: AppFonts.primaryFont,
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  _buildPageIndicator(isActive: true),
                  SizedBox(width: 8),
                  _buildPageIndicator(isActive: false),
                ],
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPageIndicator({required bool isActive}) {
    return Container(
      height: 8,
      width: isActive ? 24 : 8,
      decoration: BoxDecoration(
        color: isActive ? AppColors.primary : Colors.grey[300],
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }
}

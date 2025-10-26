import 'package:effortless_app/screens/sign_in_screen.dart';
import 'package:effortless_app/utils/app_colors.dart';
import 'package:effortless_app/utils/app_fonts.dart';
import 'package:effortless_app/utils/assets.dart';
import 'package:effortless_app/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:easy_localization/easy_localization.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(Assets.logo, height: size.height * 0.25),
                const SizedBox(height: 24),
                Text(
                  'healthcare'.tr(),
                  style: AppTextStyle.title.copyWith(
                    color: AppColors.primary,
                    fontSize: 24,
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  'lets_get_started'.tr(),
                  style: AppTextStyle.boldTitle.copyWith(
                    fontSize: 22,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 8),
                Text('login_prompt'.tr(), style: AppTextStyle.subtitle),
                const SizedBox(height: 40),
                CustomButton(
                  text: 'login'.tr(),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) =>  SignInScreen()),
                    );
                  },
                ),
                const SizedBox(height: 16),
                CustomButton(
                  text: 'sign_up'.tr(),
                  filled: false,
                  onPressed: () {
                    Navigator.pushNamed(context, '/signup');
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:effortless_app/utils/assets.dart';
import 'package:effortless_app/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:effortless_app/utils/app_colors.dart';
import 'package:effortless_app/utils/app_fonts.dart';

import 'Sign_up_screen.dart';

class SignInScreen extends StatelessWidget {
  SignInScreen({super.key});

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () => Navigator.maybePop(context),
              icon: SvgPicture.asset(
                Assets.backArrow,
                width: 22,
                height: 22,
                // If your asset uses currentColor or you want to tint it, you can set color: AppColors.textDark,
              ),
            ),
            const Spacer(),
            Text(
              'sign_in'.tr(),
              style: AppTextStyle.boldTitle.copyWith(
                fontSize: 20,
                color: AppColors.textDark,
              ),
            ),
            const Spacer(flex: 2),
          ],
        ),
      ),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                //SizedBox(height: MediaQuery.of(context).size.height * 0.1),
                // Inputs
                CustomTextField(
                  iconPath: Assets.emailIcon,
                  hintText: 'enter_email'.tr(),
                  controller: emailController,
                ),
                const SizedBox(height: 16),
                CustomTextField(
                  iconPath: Assets.passwordIcon,
                  hintText: 'enter_password'.tr(),
                  controller: passwordController,
                  isPassword: true,
                ),

                const SizedBox(height: 12),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'forgot_password'.tr(),
                      style: AppTextStyle.small.copyWith(
                        color: AppColors.primary,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 8),
                // Primary Authentication
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) =>  SignInScreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primary,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32),
                    ),
                    minimumSize: const Size(double.infinity, 56),
                    elevation: 0,
                  ),
                  child: Text(
                    'sign_in'.tr(),
                    style: AppTextStyle.body.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),

                const SizedBox(height: 12),
                // Sign up hint
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('dont_have_account'.tr(), style: AppTextStyle.small),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) =>  SignUpScreen()),
                        );
                      },
                      child: Text(
                        'sign_up'.tr(),
                        style: AppTextStyle.body.copyWith(
                          color: AppColors.primary,
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 18),
                // OR divider
                Row(
                  children: [
                    const Expanded(child: Divider(thickness: 1)),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: Text('or'.tr(), style: AppTextStyle.small),
                    ),
                    const Expanded(child: Divider(thickness: 1)),
                  ],
                ),

                const SizedBox(height: 18),
                // Social buttons
                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(color: Colors.grey.shade300),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: const EdgeInsets.symmetric(
                      vertical: 14,
                      horizontal: 12,
                    ),
                    backgroundColor: Colors.white,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        child: SvgPicture.asset(
                          Assets.googleIcon,
                          width: 22,
                          height: 22,
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Text(
                          'sign_in_with_google'.tr(),
                          style: AppTextStyle.body,
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 12),
                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(color: Colors.grey.shade300),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: const EdgeInsets.symmetric(
                      vertical: 14,
                      horizontal: 12,
                    ),
                    backgroundColor: Colors.white,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        child: SvgPicture.asset(
                          Assets.facebookIcon,
                          width: 22,
                          height: 22,
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Text(
                          'sign_in_with_facebook'.tr(),
                          style: AppTextStyle.body,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

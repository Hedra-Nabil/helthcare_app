import 'package:effortless_app/utils/assets.dart';
import 'package:effortless_app/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class SignInScreen extends StatelessWidget {
  SignInScreen({super.key});

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
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
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                // handle sign in
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                minimumSize: const Size(double.infinity, 55),
              ),
              child: Text(
                'sign_in'.tr(),
                style: const TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

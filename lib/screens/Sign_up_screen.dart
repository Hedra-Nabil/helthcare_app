import 'package:effortless_app/screens/sign_in_screen.dart';
import 'package:effortless_app/screens/welcome_screen.dart';
import 'package:flutter/material.dart';
import '../utils/app_colors.dart';
import '../utils/app_fonts.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool _agreeToTerms = false;
  bool _passwordVisible = false;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: AppColors.textDark),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) =>  WelcomeScreen()),
              );
            },
        ),
        title: const Text(
          'Sign Up',
          style: TextStyle(color: AppColors.textDark, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            _buildInputField(
              hintText: 'Enter your name',
              icon: Icons.person_outline,
            ),
            const SizedBox(height: 15),
            _buildInputField(
              hintText: 'Enter your email',
              icon: Icons.mail_outline,
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 15),
            _buildInputField(
              hintText: 'Enter your password',
              icon: Icons.lock_outline,
              obscureText: !_passwordVisible,
              suffixIcon: IconButton(
                icon: Icon(
                  _passwordVisible ? Icons.visibility : Icons.visibility_off,
                  color: Colors.grey, // Grey is neutral and works well in light theme
                ),
                onPressed: () {
                  setState(() {
                    _passwordVisible = !_passwordVisible;
                  });
                },
              ),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                SizedBox(
                  width: 24.0,
                  height: 24.0,
                  child: Checkbox(
                    value: _agreeToTerms,
                    onChanged: (bool? newValue) {
                      setState(() {
                        _agreeToTerms = newValue ?? false;
                      });
                    },
                    // 3. Updated Checkbox colors for light theme visibility
                    fillColor: WidgetStateProperty.resolveWith<Color>(
                            (Set<WidgetState> states) {
                          if (states.contains(WidgetState.selected)) {
                            return AppColors.primary; // Blue when checked
                          }
                          return AppColors.background; // White background when unchecked
                        }),
                    side: const BorderSide(color: Colors.black54, width: 1.5), // Dark border
                    checkColor: AppColors.background, // White checkmark on blue background
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: RichText(
                    text: TextSpan(
                      text: 'I agree to the healthcare ',
                      // 4. Updated text color for light theme contrast
                      style: const TextStyle(color: Colors.black54, fontSize: 13),
                      children: [
                        TextSpan(
                          text: 'Terms of Service',
                          style: AppTextStyle.body.copyWith(
                            color: AppColors.primary,),
                        ),
                        const TextSpan(
                          text: ' and ',
                          style: TextStyle(color: Colors.black54),
                        ),
                        TextSpan(
                          text: 'Privacy Policy',
                          style: AppTextStyle.body.copyWith(
                            color: AppColors.primary,),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  // Handle Sign Up button press
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primary , // Blue background
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text(
                  'Sign Up',
                  style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Don't have an account? ",
                  // 5. Updated text color for light theme contrast
                  style: TextStyle(color: Colors.black54),
                ),
                GestureDetector(
                  onTap: () {
                    // *** MODIFICATION: Navigate to SignInScreen ***
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => SignInScreen(),
                      ),
                    );
                  },
                  child: Text(
                    'Sign In',
                    style: AppTextStyle.body.copyWith(
                      color: AppColors.primary,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }

  Widget _buildInputField({
    required String hintText,
    required IconData icon,
    bool obscureText = false,
    TextInputType keyboardType = TextInputType.text,
    Widget? suffixIcon,
  }) {
    return Container(
      // 6. Updated input field colors for light theme
      decoration: BoxDecoration(
        color: Colors.grey[100], // Very light grey background for depth
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey[300]!), // Subtle light border
      ),
      child: TextField(
        keyboardType: keyboardType,
        obscureText: obscureText,
        style: const TextStyle(color: Colors.black87), // Dark text
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(color: Colors.grey),
          prefixIcon: Icon(icon, color: Colors.grey),
          suffixIcon: suffixIcon,
          border: InputBorder.none, // Remove default TextField border
          contentPadding:
          const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
        ),
      ),
    );
  }
}
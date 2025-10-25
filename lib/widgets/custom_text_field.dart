import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:effortless_app/utils/app_colors.dart';
import 'package:effortless_app/utils/app_fonts.dart';

class CustomTextField extends StatefulWidget {
  final String iconPath;
  final String hintText;
  final TextEditingController controller;
  final bool isPassword;

  const CustomTextField({
    super.key,
    required this.iconPath,
    required this.hintText,
    required this.controller,
    this.isPassword = false,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      obscureText: widget.isPassword ? _obscureText : false,
      decoration: InputDecoration(
        prefixIcon: Padding(
          padding: const EdgeInsets.all(12),
          child: SvgPicture.asset(
            widget.iconPath,
            width: 20,
            height: 20,
            colorFilter: const ColorFilter.mode(
              AppColors.textLight,
              BlendMode.srcIn,
            ),
          ),
        ),
        suffixIcon: widget.isPassword
            ? IconButton(
                onPressed: () {
                  setState(() => _obscureText = !_obscureText);
                },
                icon: Icon(
                  _obscureText ? Icons.visibility_off : Icons.visibility,
                  color: Colors.grey,
                ),
              )
            : null,
        hintText: widget.hintText,
        hintStyle: AppTextStyle.body.copyWith(color: AppColors.textLight),
        filled: true,
        fillColor: const Color(0xFFF8F8F8),
        contentPadding: const EdgeInsets.symmetric(
          vertical: 18,
          horizontal: 16,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}

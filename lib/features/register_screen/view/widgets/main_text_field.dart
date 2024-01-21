import 'package:flutter/material.dart';
import 'package:messeger_app/core/ui_kits/app_colors.dart';
import 'package:messeger_app/core/ui_kits/app_text_styles.dart';

class MainTextField extends StatelessWidget {
  const MainTextField({
    super.key,
    required this.textEditingController,
    required this.title,
    this.isPass = false,
    this.icon,
  });

  final bool isPass;
  final String title;
  final Widget? icon;
  final TextEditingController textEditingController;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: isPass,
      controller: textEditingController,
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColors.stroke,
        prefixIcon: icon,
        prefixIconConstraints: const BoxConstraints(
          minWidth: 36,
        ),
        hintText: title,
        hintStyle: AppTextStyles.secondaryText,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 8,
          vertical: 9,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}

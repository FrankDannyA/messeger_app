import 'package:flutter/material.dart';
import 'package:messeger_app/core/ui_kits/app_colors.dart';

class AppTextStyles {
  static TextStyle get h2 => TextStyle(
        color: AppColors.black,
        height: 39.2 / 32,
        fontSize: 32,
        fontWeight: FontWeight.w600,
      );
  static TextStyle get secondaryText => TextStyle(
        color: AppColors.gray,
        fontWeight: FontWeight.w500,
        fontSize: 16,
        height: 19.41 / 16,
      );

  static TextStyle get avatarTitle => TextStyle(
        color: AppColors.white,
        fontWeight: FontWeight.w700,
        fontSize: 20,
        height: 25.76 / 20,
      );

  static TextStyle get titleTile => TextStyle(
        color: AppColors.textMain,
        fontWeight: FontWeight.w600,
        fontSize: 15,
        height: 18.38 / 15,
      );

  static TextStyle get titleDescription => TextStyle(
        color: AppColors.black,
        fontWeight: FontWeight.w500,
        fontSize: 12,
        height: 14.56 / 12,
      );
}

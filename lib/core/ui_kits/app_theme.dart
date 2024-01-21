import 'package:flutter/material.dart';
import 'package:messeger_app/core/ui_kits/app_colors.dart';

class AppTheme {
  static ThemeData get light => ThemeData(
        fontFamily: 'Gilroy',
        scaffoldBackgroundColor: AppColors.white,
        appBarTheme: AppBarTheme(
          color: AppColors.white,
          centerTitle: false,
          elevation: 0,
        ),
        dividerTheme: DividerThemeData(
          space: 0,
          thickness: 1,
          color: AppColors.stroke,
        ),
      );
}

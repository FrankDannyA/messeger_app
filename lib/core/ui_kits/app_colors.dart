import 'package:flutter/material.dart';

class AppColors {
  static Color get white => const Color(0xFFFFFFFF);
  static Color get stroke => const Color(0xFFEDF2F6);
  static Color get black => const Color(0xFF2B333E);
  static Color get gray => const Color(0xFF9DB7CB);
  static Color get textMain => const Color(0xFF000000);
  static Color get textSecondary => const Color(0xFF5E7A90);

  //Linear Gradients
  static LinearGradient get whiteGreen => const LinearGradient(
        colors: [
          Color(0xFF1FDB5F),
          Color(0xFF31C764),
        ],
      );

  static LinearGradient get orangeRed => const LinearGradient(
        colors: [
          Color(0xFFF66700),
          Color(0xFFED3900),
        ],
      );

  static LinearGradient get blueSky => const LinearGradient(
        colors: [
          Color(0xFF00ACF6),
          Color(0xFF006DED),
        ],
      );
}

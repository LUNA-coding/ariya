import 'package:flutter/material.dart';

import 'ariya_colors.dart';
import 'ariya_theme.dart';
import 'ariya_typography.dart';

class ariyaDarkThemeColors extends ariyaColors {
  ariyaDarkThemeColors()
      : super(
    grayscale100: const Color(0xFF222525),
    grayscale200: const Color(0xFF1C1F1F),
    grayscale300: const Color(0xFF2C3030),
    grayscale400: const Color(0xFF3B3F40),
    grayscale500: const Color(0xFF808989),
    grayscale600: const Color(0xFFB4B9B9),
    grayscale700: const Color(0xFFDADDDD),
    grayscale800: const Color(0xFFEAEBEB),
    grayscale900: const Color(0xFFF4F5F5),
    grayscale1000: const Color(0xFFFDFEFE),
    primaryBrand: const Color(0xFF2ED096),
    primaryNegative: const Color(0xFFF7CE45),
  );
}

class ariyaDarkThemeTypography extends ariyaTypography {
  ariyaDarkThemeTypography() : super(defaultColor: ariyaDarkThemeColors().grayscale700);
}

class ariyaDarkTheme extends ariyaTheme {
  ariyaDarkTheme() : super(colors: ariyaDarkThemeColors(), textStyle: ariyaDarkThemeTypography());
}
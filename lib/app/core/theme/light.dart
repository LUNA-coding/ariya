import 'package:flutter/material.dart';

import 'ariya_colors.dart';
import 'ariya_theme.dart';
import 'ariya_typography.dart';

class ariyaLightThemeColors extends ariyaColors {
  ariyaLightThemeColors()
      : super(
    grayscale100: const Color(0xFFFDFEFE),
    grayscale200: const Color(0xFFF4F5F5),
    grayscale300: const Color(0xFFEAEBEB),
    grayscale400: const Color(0xFFDADDDD),
    grayscale500: const Color(0xFFB4B9B9),
    grayscale600: const Color(0xFF808989),
    grayscale700: const Color(0xFF626A6B),
    grayscale800: const Color(0xFF4B5152),
    grayscale900: const Color(0xFF333738),
    grayscale1000: const Color(0xFF1C1F1F),
    primaryBrand: const Color(0xFF2ED096),
    primaryNegative: const Color(0xFFF7CE45),
  );
}

class ariyaLightThemeTypography extends ariyaTypography {
  ariyaLightThemeTypography() : super(defaultColor: ariyaLightThemeColors().grayscale700);
}

class ariyaLightTheme extends ariyaTheme {
  ariyaLightTheme() : super(colors: ariyaLightThemeColors(), textStyle: ariyaLightThemeTypography());
}
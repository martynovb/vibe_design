import 'package:flutter/material.dart';
import 'package:vibe_design/gen/colors.gen.dart';
import 'package:vibe_design/gen/fonts.gen.dart';
import 'package:vibe_design/presentation/shared/styles/mobile/app_text_style_mobile.dart';
import 'package:vibe_design/presentation/shared/styles/web/app_text_style_web.dart';
import 'package:vibe_design/presentation/shared/utils/app_utils.dart';

class AppTheme {
  static ThemeData lightThemeData = _themeData(
    _lightColorScheme,
  );

  static ThemeData darkThemeData = _themeData(
    _darkColorScheme,
  );

  static ThemeData _themeData(
    ColorScheme colorScheme,
  ) {
    return ThemeData(
      fontFamily: AppFontsFamily.montserrat,
      colorScheme: colorScheme,
      canvasColor: colorScheme.surface,
      scaffoldBackgroundColor: colorScheme.surface,
      useMaterial3: true,
      textTheme: AppUtils.isMobile
          ? AppTextStyleMobile.textTheme
          : AppTextStyleWeb.textTheme,
      textSelectionTheme: TextSelectionThemeData(
        cursorColor: colorScheme.onPrimary,
        selectionColor: ColorName.accent.withValues(alpha: 0.3),
      ),
    );
  }

  static ColorScheme get _lightColorScheme {
    return const ColorScheme(
      brightness: Brightness.light, // Since background is black
      primary: ColorName.accent, // EF53CD - Main brand color
      onPrimary: Colors.black, // Should contrast with primary
      secondary: ColorName.accent, // Could use accent or another variant
      onSecondary: Colors.black,
      error: ColorName.accent, // Consider adding dedicated error color
      onError: Colors.black,
      surface: ColorName.background, // 000000 - Scaffold background
      onSurface: ColorName.title, // E7E7E7 - Text on background
      surfaceContainerHighest:
          ColorName.card, // E7E7E7 - Optional surface variant
      outline: ColorName.stroke, // E7E7E7 - Borders/outlines
    );
  }

  static ColorScheme get _darkColorScheme {
    return const ColorScheme(
      brightness: Brightness.dark, // Since background is black
      primary: ColorName.accent, // EF53CD - Main brand color
      onPrimary: Colors.black, // Should contrast with primary
      secondary: ColorName.accent, // Could use accent or another variant
      onSecondary: Colors.black,
      error: ColorName.accent, // Consider adding dedicated error color
      onError: Colors.black,
      surface: ColorName.background, // 000000 - Scaffold background
      onSurface: ColorName.title, // E7E7E7 - Text on background
      surfaceContainerHighest:
          ColorName.card, // E7E7E7 - Optional surface variant
      outline: ColorName.stroke, // E7E7E7 - Borders/outlines
    );
  }
}

import 'package:flutter/material.dart';

class AppTextStyleWeb {
  // H1 - Montserrat 96px (Bold)
  static const TextStyle _h1 = TextStyle(
    fontSize: 96,
    fontWeight: FontWeight.w700,
    height: 1.2,
  );

  // H2 - Montserrat 64px (Mixed: Bold and Regular)
  static const TextStyle _h2 = TextStyle(
    fontSize: 64,
    fontWeight: FontWeight.w700,
    height: 1.2,
  );

  // H3 - Montserrat 40px  ExtraBold
  static const TextStyle _h3 = TextStyle(
    fontSize: 40,
    fontWeight: FontWeight.w800,
    height: 1.2,
  );

  // H4 - Montserrat 32px Bold
  static const TextStyle _h4 = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.w700,
    height: 1.2,
  );

  // Text - Montserrat 24px
  static const TextStyle _text = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w400,
    height: 1.2,
  );

  // Additional Text - Montserrat 20px
  static const TextStyle _subText = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w400,
    height: 1.2,
  );

  static TextTheme get textTheme => const TextTheme(
        displayLarge: _h1,
        displayMedium: _h2,
        displaySmall: _h3,

        // Headline Styles
        headlineLarge: _h3,
        headlineMedium: _h4,
        headlineSmall: _text,

        // Body Styles
        bodyLarge: _text,
        bodyMedium: _subText,

        // Label Styles
        labelLarge: _text,
        labelMedium: _subText,
      );
}

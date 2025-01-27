import 'package:flutter/material.dart';

class AppDimensions {
  static const maxMobileWidth = 767.0;


  static const insetsMobile = 16.0;
  static const insetsDesktop = 16.0;
}

class AppSpacing {
  const AppSpacing();

  static SizedBox horizontal(double size) => SizedBox(width: size);
  static SizedBox vertical(double size) => SizedBox(height: size);

  static SizedBox get h4 => horizontal(Spacing.xxs);
  static SizedBox get h8 => horizontal(Spacing.xs);
  static SizedBox get h16 => horizontal(Spacing.md);

  static SizedBox get v4 => vertical(Spacing.xxs);
  static SizedBox get v8 => vertical(Spacing.xs);
  static SizedBox get v16 => vertical(Spacing.md);
}

class Spacing {
  const Spacing();

  static const double xxs = 4;
  static const double xs = 8;
  static const double sm = 12;
  static const double md = 16;
  static const double lg = 24;
  static const double xl = 32;
  static const double xxl = 40;
}

class Insets {
  const Insets();
}

class ButtonSizes {
  const ButtonSizes();

  final double desktopHeight = 54;
  final double mobileHeight = 48;
  final double desktopWidth = 116;
  final double outlinedIconPadding = 24;
}

class AppBarSizes {
  const AppBarSizes();

  final double mobile = 68;
  final double desktop = 80;
}

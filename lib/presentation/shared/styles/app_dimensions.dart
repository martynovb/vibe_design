import 'package:flutter/material.dart';

class AppDimensions {
  static const double maxMobileWidth = 767;

  static const double insetsMobile = 16;
  static const double insetsDesktop = 100;
  static const double insetsButton = 16;

  static const double menuDesktopHeight = 120;
}

class AppSpacing {
  const AppSpacing();

  static SizedBox horizontal(double size) => SizedBox(width: size);
  static SizedBox vertical(double size) => SizedBox(height: size);

  static SizedBox get h_4 => horizontal(Spacing.xxs);
  static SizedBox get h_8 => horizontal(Spacing.xs);
  static SizedBox get h_16 => horizontal(Spacing.md);
  static SizedBox get h_24 => horizontal(Spacing.lg);
  static SizedBox get h_32 => horizontal(Spacing.xl);
  static SizedBox get h_40 => horizontal(Spacing.xxl);
  static SizedBox get h_48 => horizontal(Spacing.xxxl);

  static SizedBox get v_4 => vertical(Spacing.xxs);
  static SizedBox get v_8 => vertical(Spacing.xs);
  static SizedBox get v_16 => vertical(Spacing.md);
  static SizedBox get v_24 => vertical(Spacing.lg);
  static SizedBox get v_32 => vertical(Spacing.xl);
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
  static const double xxxl = 48;
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

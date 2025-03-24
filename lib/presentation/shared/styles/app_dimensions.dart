import 'package:flutter/material.dart';

class AppDimensions {
  static const double maxMobileWidth = minDesktopWidth;
  static const double minDesktopWidth = 1240;

  static const double insetsMobile = 16;
  static const double insetsDesktop = 100;
  static const double insetsButton = 16;

  static const double menuDesktopHeight = 120;

  static const double menuMobileHeight = 64;

  static const double headerCardDesktopWidth = 288;

  static const double myStudentsCardDesktopHeight = 220;
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

  static SizedBox get h_100 => horizontal(100);

  static SizedBox get v_4 => vertical(Spacing.xxs);

  static SizedBox get v_8 => vertical(Spacing.xs);

  static SizedBox get v_12 => vertical(Spacing.sm);

  static SizedBox get v_16 => vertical(Spacing.md);

  static SizedBox get v_24 => vertical(Spacing.lg);

  static SizedBox get v_32 => vertical(Spacing.xl);

  static SizedBox get v_40 => vertical(Spacing.xxl);

  static SizedBox get v_48 => vertical(Spacing.xxxl);

  static SizedBox get v_56 => vertical(Spacing.s56);

  static SizedBox get v_64 => vertical(64);

  static SizedBox get v_72 => vertical(72);

  static SizedBox get v_90 => vertical(90);

  static SizedBox get v_100 => vertical(100);

  static SizedBox get v_128 => vertical(128);
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

  static const double s56 = 56;
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

class AppTextSizes {
  static const mobileSubTitleSize = 16.0;
}

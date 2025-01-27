import 'package:flutter/material.dart';

import '../styles/app_dimensions.dart';

class Responsive {
  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < AppDimensions.maxMobileWidth;

  static double responsiveValue({
    required BuildContext context,
    required double mobile,
    required double desktop,
  }) =>
      isMobile(context) ? mobile : desktop;
}

import 'package:flutter/material.dart';

import '../styles/app_dimensions.dart';
import '../utils/app_utils.dart';

class DeviceLayoutBuilder extends StatelessWidget {
  final Widget Function(bool isMobile) layoutBuilder;

  const DeviceLayoutBuilder({
    super.key,
    required this.layoutBuilder,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => layoutBuilder(
        constraints.maxWidth < AppDimensions.maxMobileWidth ||
            AppUtils.isMobile,
      ),
    );
  }
}

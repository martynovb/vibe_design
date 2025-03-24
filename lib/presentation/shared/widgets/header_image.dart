import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:vibe_design/presentation/shared/widgets/device_layout_builder.dart';

class HeaderImage extends StatelessWidget {
  const HeaderImage({
    super.key,
    required this.headerImagePath,
    required this.width,
    this.height,
  });

  final String headerImagePath;
  final double width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return DeviceLayoutBuilder(layoutBuilder: (isMobile) {
      return Container(
        height: height ?? (isMobile ? 450 : 555),
        foregroundDecoration: BoxDecoration(
          color: Colors.black.withValues(
            alpha: 0.6,
          ),
        ),
        child: ImageFiltered(
          imageFilter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
          child: Stack(
            children: [
              Positioned(
                left: -width / 2,
                top: 0,
                bottom: 33,
                child: Container(
                  width: width,
                  height: 259,
                  decoration: BoxDecoration(
                    gradient: RadialGradient(
                      center: Alignment.center,
                      radius: 20,
                      colors: [
                        Colors.purple.withValues(alpha: 0.5),
                        Colors.transparent,
                      ],
                      stops: const [0.004, 0.06],
                    ),
                  ),
                ),
              ),
              Positioned(
                right: -width / 2,
                top: 0,
                bottom: 33,
                child: Container(
                  width: width,
                  height: 259,
                  decoration: BoxDecoration(
                    gradient: RadialGradient(
                      center: Alignment.center,
                      radius: 20,
                      colors: [
                        Colors.purple.withValues(alpha: 0.5),
                        Colors.transparent,
                      ],
                      stops: const [0.004, 0.06],
                    ),
                  ),
                ),
              ),
              Positioned.fill(
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: isMobile ? 0 : 100,
                    ),
                    child: Image.asset(
                      headerImagePath,
                      width: 743,
                      height: 429,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}

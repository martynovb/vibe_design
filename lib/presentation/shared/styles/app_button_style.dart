import 'package:flutter/material.dart';

import '../../../gen/colors.gen.dart';
import 'app_dimensions.dart';

class AppButtonStyle {
  static ButtonStyle filledBtnStyle({
    required BuildContext context,
    TextStyle? textStyle,
  }) =>
      ButtonStyle(
        elevation: WidgetStateProperty.all(0),
        padding: WidgetStateProperty.all(
          const EdgeInsets.symmetric(
            horizontal: Spacing.xl,
            vertical: Spacing.md,
          ),
        ),
        backgroundColor: WidgetStateProperty.resolveWith(
          (Set<WidgetState> states) {
            if (states.contains(WidgetState.disabled)) {
              return ColorName.stroke;
            }
            return ColorName.accent;
          },
        ),
        shadowColor: WidgetStateProperty.all(ColorName.stroke),
        foregroundColor: WidgetStateProperty.resolveWith(
          (states) {
            if (states.contains(WidgetState.disabled)) {
              return ColorName.titleText;
            }
            return ColorName.background;
          },
        ),
        textStyle: WidgetStateProperty.resolveWith(
          (states) {
            return textStyle ??
                TextTheme.of(context).bodyMedium?.copyWith(
                      color: ColorName.background,
                    );
          },
        ),
        shape: WidgetStateProperty.resolveWith(
          (states) {
            return RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            );
          },
        ),
      );
}

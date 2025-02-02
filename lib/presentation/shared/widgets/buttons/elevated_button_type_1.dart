import 'package:flutter/material.dart';
import 'package:vibe_design/presentation/shared/styles/app_button_style.dart';

import '../../../../gen/colors.gen.dart';

class ElevatedButtonType1 extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color color;
  final Color textColor;
  final double fontSize;

  const ElevatedButtonType1({
    super.key,
    required this.text,
    required this.onPressed,
    this.color = ColorName.accent,
    this.textColor = ColorName.background,
    this.fontSize = 18.0,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      child: ElevatedButton(
        onPressed: onPressed,
        style: AppButtonStyle.filledBtnStyle(
          context: context,
        ),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextTheme.of(context).bodyMedium?.copyWith(
                height: 1.2,
                color: ColorName.background,
                fontWeight: FontWeight.w600, //semibold
              ),
        ),
      ),
    );
  }
}

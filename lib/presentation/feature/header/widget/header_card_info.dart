part of '../header.dart';

class HeaderCardInfoWidget extends StatelessWidget {
  const HeaderCardInfoWidget({
    super.key,
    required this.title,
    required this.subtitle,
  });

  final String title;
  final Widget subtitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints:
          const BoxConstraints(maxWidth: AppDimensions.headerCardDesktopWidth),
      child: Card(
        color: ColorName.card,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        child: Padding(
          padding: const EdgeInsets.all(Spacing.lg),
          child: Column(
            children: [
              Text(
                title,
                style: TextTheme.of(context).headlineMedium,
              ),
              AppSpacing.v_16,
              subtitle,
            ],
          ),
        ),
      ),
    );
  }
}

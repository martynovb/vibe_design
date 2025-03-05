part of '../learning_process.dart';

class LearningProcessDesktopPage extends StatelessWidget {
  const LearningProcessDesktopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: AppDimensions.minDesktopWidth,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _title(context),
            AppSpacing.v_16,
            Align(
              alignment: Alignment.centerRight,
              child: SizedBox(
                width: 600,
                child: _subtitle(context),
              ),
            ),
            AppSpacing.v_64,
            _cards(context),
          ],
        ),
      ),
    );
  }

  Widget _title(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: LocaleKeys.learningProcessTitle1.tr(),
        style: TextTheme.of(context).displayMedium?.copyWith(
              color: ColorName.title,
              fontWeight: FontWeight.w600,
            ),
        children: [
          TextSpan(
            text: LocaleKeys.learningProcessTitle2.tr(),
            style: TextTheme.of(context).displayMedium?.copyWith(
                  color: ColorName.title,
                  fontWeight: FontWeight.w800,
                ),
          ),
          TextSpan(
            text: LocaleKeys.learningProcessTitle3.tr(),
            style: TextTheme.of(context).displayMedium?.copyWith(
                  color: ColorName.title,
                  fontWeight: FontWeight.w600,
                ),
          ),
        ],
      ),
    );
  }

  Widget _subtitle(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: LocaleKeys.learningProcessSubTitle1.tr(),
        style: TextTheme.of(context).headlineSmall?.copyWith(
              color: ColorName.title,
              fontWeight: FontWeight.normal,
            ),
        children: [
          TextSpan(
            text: LocaleKeys.learningProcessSubTitle2.tr(),
            style: TextTheme.of(context).headlineSmall?.copyWith(
                  color: ColorName.accent,
                  fontWeight: FontWeight.w600,
                ),
          ),
          TextSpan(
            text: LocaleKeys.learningProcessSubTitle3.tr(),
            style: TextTheme.of(context).headlineSmall?.copyWith(
                  color: ColorName.title,
                  fontWeight: FontWeight.normal,
                ),
          ),
        ],
      ),
    );
  }

  Widget _cards(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _cardItem(
                context: context,
                height: 444,
                title: LocaleKeys.learningProcessCardTitle1.tr(),
                subtitle: LocaleKeys.learningProcessCardDescription1.tr(),
                mainImage: Assets.images.laptopLeft.image(
                  width: 201,
                  height: 213,
                ),
                topTitle: true,
                topImage: false,
                numberImage: Assets.images.number1.svg(),
              ),
              AppSpacing.v_32,
              _cardItem(
                context: context,
                height: 420,
                title: LocaleKeys.learningProcessCardTitle3.tr(),
                subtitle: LocaleKeys.learningProcessCardDescription3.tr(),
                mainImage: Assets.images.speechBubbleHeart.image(
                  width: 176,
                  height: 213,
                ),
                topTitle: false,
                topImage: true,
                numberImage: Assets.images.number3.svg(),
              ),
            ],
          ),
        ),
        AppSpacing.h_32,
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _cardItem(
                context: context,
                height: 444,
                title: LocaleKeys.learningProcessCardTitle2.tr(),
                subtitle: LocaleKeys.learningProcessCardDescription2.tr(),
                mainImage: Assets.images.stickyNotes.image(
                  width: 299,
                  height: 190,
                ),
                topTitle: false,
                topImage: true,
                numberImage: Assets.images.number2.svg(),
              ),
              AppSpacing.v_32,
              _cardItem(
                context: context,
                height: 444,
                title: LocaleKeys.learningProcessCardTitle4.tr(),
                subtitle: LocaleKeys.learningProcessCardDescription4.tr(),
                mainImage: Assets.images.pen.image(
                  width: 103,
                  height: 213,
                ),
                topTitle: true,
                topImage: true,
                numberImage: Assets.images.number4.svg(),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _cardItem({
    required BuildContext context,
    required String title,
    required String subtitle,
    required Image mainImage,
    required SvgPicture numberImage,
    required bool topTitle,
    required bool topImage,
    required double height,
  }) {
    return Stack(
      children: [
        Column(
          children: [
            AppSpacing.v_8,
            Card(
              color: ColorName.card,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              child: Padding(
                padding: const EdgeInsets.all(Spacing.xl),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Center(child: mainImage),
                    AppSpacing.v_16,
                    if (topTitle) ...[
                      Text(
                        title,
                        style: TextTheme.of(context).headlineMedium?.copyWith(
                              color: ColorName.title,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      AppSpacing.v_24,
                      Text(
                        subtitle,
                        style: TextTheme.of(context).bodyMedium?.copyWith(
                              color: ColorName.descriptionText,
                              fontWeight: FontWeight.normal,
                            ),
                      ),
                    ] else ...[
                      Text(
                        subtitle,
                        style: TextTheme.of(context).bodyMedium?.copyWith(
                              color: ColorName.descriptionText,
                              fontWeight: FontWeight.normal,
                            ),
                      ),
                      AppSpacing.v_24,
                      Text(
                        title,
                        style: TextTheme.of(context).headlineMedium?.copyWith(
                              color: ColorName.title,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ],
                  ],
                ),
              ),
            ),
            AppSpacing.v_16,
          ],
        ),
        if (topImage) ...[
          Positioned(
            right: 16,
            bottom: 0,
            child: numberImage,
          ),
        ] else ...[
          Positioned(
            right: 16,
            top: 0,
            child: numberImage,
          ),
        ],
      ],
    );
  }
}

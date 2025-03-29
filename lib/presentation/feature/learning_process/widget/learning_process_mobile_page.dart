part of '../learning_process.dart';

class LearningProcessMobilePage extends StatelessWidget {
  const LearningProcessMobilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Spacing.md),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _title(context),
          AppSpacing.v_16,
          _subtitle(context),
          AppSpacing.v_24,
          _cards(context),
        ],
      ),
    );
  }

  Widget _title(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: LocaleKeys.learningProcessTitle1.tr(),
        style: TextTheme.of(context).displaySmall?.copyWith(
              color: ColorName.title,
              fontWeight: FontWeight.w600,
            ),
        children: [
          TextSpan(
            text: LocaleKeys.learningProcessTitle2.tr(),
            style: TextTheme.of(context).displaySmall?.copyWith(
                  color: ColorName.title,
                  fontWeight: FontWeight.w800,
                ),
          ),
          TextSpan(
            text: LocaleKeys.learningProcessTitle3.tr(),
            style: TextTheme.of(context).displaySmall?.copyWith(
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
        style: TextTheme.of(context).bodyMedium?.copyWith(
              color: ColorName.title,
              fontWeight: FontWeight.normal,
              fontSize: AppTextSizes.mobileSubTitleSize,
            ),
        children: [
          TextSpan(
            text: LocaleKeys.learningProcessSubTitle2.tr(),
            style: TextTheme.of(context).bodyMedium?.copyWith(
                  color: ColorName.accent,
                  fontWeight: FontWeight.w600,
                  fontSize: AppTextSizes.mobileSubTitleSize,
                ),
          ),
          TextSpan(
            text: LocaleKeys.learningProcessSubTitle3.tr(),
            style: TextTheme.of(context).bodyMedium?.copyWith(
                  color: ColorName.title,
                  fontWeight: FontWeight.normal,
                  fontSize: AppTextSizes.mobileSubTitleSize,
                ),
          ),
        ],
      ),
    );
  }

  Widget _cards(BuildContext context) {
    return Column(
      children: [
        _cardItem(
          context: context,
          title: LocaleKeys.learningProcessCardTitle1.tr(),
          subtitle: LocaleKeys.learningProcessCardDescription1.tr(),
          mainImage: Image.network(
            AppImagesUrls.laptopLeft,
            width: 201,
            height: 213,
          ),
          topTitle: true,
          isRightImage: false,
          numberImage: Assets.images.number1.image(),
        ),
        AppSpacing.v_16,
        _cardItem(
          context: context,
          title: LocaleKeys.learningProcessCardTitle2.tr(),
          subtitle: LocaleKeys.learningProcessCardDescription2.tr(),
          mainImage: Image.network(
            AppImagesUrls.stickyNotes,
            width: 299,
            height: 190,
          ),
          topTitle: false,
          isRightImage: true,
          numberImage: Assets.images.number2.image(),
        ),
        AppSpacing.v_16,
        _cardItem(
          context: context,
          title: LocaleKeys.learningProcessCardTitle3.tr(),
          subtitle: LocaleKeys.learningProcessCardDescription3.tr(),
          mainImage: Image.network(
            AppImagesUrls.speachBubbleHeart,
            width: 176,
            height: 213,
          ),
          topTitle: false,
          isRightImage: false,
          numberImage: Assets.images.number3.image(),
        ),
        AppSpacing.v_16,
        _cardItem(
          context: context,
          title: LocaleKeys.learningProcessCardTitle4.tr(),
          subtitle: LocaleKeys.learningProcessCardDescription4.tr(),
          mainImage: Image.network(
            AppImagesUrls.pen,
            width: 103,
            height: 213,
          ),
          topTitle: true,
          isRightImage: true,
          numberImage: Assets.images.number4.image(),
        ),
      ],
    );
  }

  Widget _cardItem({
    required BuildContext context,
    required String title,
    required String subtitle,
    required Image mainImage,
    required Image numberImage,
    required bool topTitle,
    required bool isRightImage,
  }) {
    return Stack(
      children: [
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
                          fontSize: AppTextSizes.mobileSubTitleSize,
                        ),
                  ),
                ] else ...[
                  Text(
                    subtitle,
                    style: TextTheme.of(context).bodyMedium?.copyWith(
                          color: ColorName.descriptionText,
                          fontWeight: FontWeight.normal,
                          fontSize: AppTextSizes.mobileSubTitleSize,
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
        if (isRightImage) ...[
          Positioned(
            right: 16,
            top: 0,
            child: numberImage,
          ),
        ] else ...[
          Positioned(
            left: 16,
            top: 0,
            child: numberImage,
          ),
        ],
      ],
    );
  }
}

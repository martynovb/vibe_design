part of '../about_me.dart';

class AboutMeMobilePage extends StatelessWidget {
  const AboutMeMobilePage({super.key});

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
          _description(context),
          AppSpacing.v_64,
          _myPhotoCard(context),
          AppSpacing.v_16,
          _aboutMeCard(context),
        ],
      ),
    );
  }

  Widget _title(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: LocaleKeys.aboutMeTitle1.tr(),
        style: TextTheme.of(context).displaySmall?.copyWith(
              color: ColorName.title,
              fontWeight: FontWeight.w600,
            ),
        children: [
          TextSpan(
            text: LocaleKeys.aboutMeTitle2.tr(),
            style: TextTheme.of(context).displaySmall?.copyWith(
                  color: ColorName.title,
                  fontWeight: FontWeight.w800,
                ),
          ),
        ],
      ),
    );
  }

  Widget _description(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: LocaleKeys.aboutMeDescription1.tr(),
        style: TextTheme.of(context).headlineSmall?.copyWith(
              color: ColorName.title,
              fontWeight: FontWeight.normal,
              fontSize: AppTextSizes.mobileSubTitleSize,
            ),
        children: [
          TextSpan(
            text: LocaleKeys.aboutMeDescription2.tr(),
            style: TextTheme.of(context).headlineSmall?.copyWith(
                  color: ColorName.accent,
                  fontWeight: FontWeight.w600,
                  fontSize: AppTextSizes.mobileSubTitleSize,
                ),
          ),
          TextSpan(
            text: LocaleKeys.aboutMeDescription3.tr(),
            style: TextTheme.of(context).headlineSmall?.copyWith(
                  color: ColorName.title,
                  fontWeight: FontWeight.normal,
                  fontSize: AppTextSizes.mobileSubTitleSize,
                ),
          ),
        ],
      ),
    );
  }

  Widget _myPhotoCard(BuildContext context) => Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Image(
              image: NetworkImage(AppImagesUrls.myPhoto),
              fit: BoxFit.cover,
            ),
          ),
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.black.withValues(alpha: 0.3),
                    Colors.transparent,
                    Colors.black.withValues(alpha: 0.3),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
          ),
          Positioned.fill(
            child: Padding(
              padding: const EdgeInsets.all(Spacing.lg),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    LocaleKeys.myPhotoTitle.tr(),
                    style: TextTheme.of(context).headlineSmall?.copyWith(
                          color: ColorName.title,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  AppSpacing.v_12,
                  Text.rich(
                    TextSpan(
                      text: LocaleKeys.myPhotoSubTitle.tr(),
                      style: TextTheme.of(context).bodyMedium?.copyWith(
                            color: ColorName.title,
                            fontWeight: FontWeight.normal,
                            fontSize: AppTextSizes.mobileSubTitleSize,
                          ),
                    ),
                  ),
                  Spacer(),
                  Text(
                    '"${LocaleKeys.myPhotoDescription.tr()}"',
                    style: TextTheme.of(context).bodyLarge?.copyWith(
                          color: ColorName.title,
                          fontSize: AppTextSizes.mobileSubTitleSize,
                        ),
                  ),
                ],
              ),
            ),
          )
        ],
      ));

  Widget _aboutMeCard(BuildContext context) => Card(
        color: ColorName.card,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        child: Padding(
          padding: const EdgeInsets.all(Spacing.lg),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                LocaleKeys.aboutMeTitle.tr(),
                style: TextTheme.of(context).headlineMedium?.copyWith(
                      color: ColorName.title,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              AppSpacing.v_16,
              Padding(
                padding: const EdgeInsets.only(left: Spacing.md),
                child: Column(
                  children: [
                    _buletPoint(
                      context: context,
                      title: LocaleKeys.aboutMeBuletPoint11,
                      description: LocaleKeys.aboutMeBuletPoint12,
                    ),
                    _buletPoint(
                      context: context,
                      title: LocaleKeys.aboutMeBuletPoint21,
                      description: LocaleKeys.aboutMeBuletPoint22,
                    ),
                    _buletPoint(
                      context: context,
                      title: LocaleKeys.aboutMeBuletPoint31,
                      description: LocaleKeys.aboutMeBuletPoint32,
                    ),
                    _buletPoint(
                      context: context,
                      title: LocaleKeys.aboutMeBuletPoint41,
                      description: LocaleKeys.aboutMeBuletPoint42,
                    ),
                    _buletPoint(
                      context: context,
                      title: LocaleKeys.aboutMeBuletPoint51,
                      description: LocaleKeys.aboutMeBuletPoint52,
                    ),
                    _buletPoint(
                      context: context,
                      title: LocaleKeys.aboutMeBuletPoint61,
                      description: LocaleKeys.aboutMeBuletPoint62,
                    ),
                    _buletPoint(
                      context: context,
                      title: LocaleKeys.aboutMeBuletPoint71,
                      description: LocaleKeys.aboutMeBuletPoint72,
                    ),
                    _buletPoint(
                      context: context,
                      title: LocaleKeys.aboutMeBuletPoint81,
                      description: LocaleKeys.aboutMeBuletPoint82,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );

  Widget _buletPoint({
    required String title,
    required String description,
    required BuildContext context,
  }) {
    return SizedBox(
      width: double.infinity,
      child: Text.rich(
        TextSpan(
          text: LocaleKeys.buletPoint.tr(),
          style: TextTheme.of(context).headlineSmall?.copyWith(
                color: ColorName.accent,
                fontWeight: FontWeight.w600,
                fontSize: AppTextSizes.mobileSubTitleSize,
              ),
          children: [
            TextSpan(
              text: ' ',
              style: TextTheme.of(context).headlineSmall?.copyWith(
                    color: ColorName.accent,
                    fontWeight: FontWeight.w600,
                    fontSize: AppTextSizes.mobileSubTitleSize,
                  ),
            ),
            TextSpan(
                text: title.tr(),
                style: TextTheme.of(context).headlineSmall?.copyWith(
                      color: ColorName.accent,
                      fontWeight: FontWeight.w600,
                      fontSize: AppTextSizes.mobileSubTitleSize,
                    ),
                children: [
                  TextSpan(
                    text: description.tr(),
                    style: TextTheme.of(context).headlineSmall?.copyWith(
                          color: ColorName.descriptionText,
                          fontWeight: FontWeight.normal,
                          fontSize: AppTextSizes.mobileSubTitleSize,
                        ),
                  ),
                ])
          ],
        ),
      ),
    );
  }
}

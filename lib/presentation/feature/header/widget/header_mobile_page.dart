part of '../header.dart';

class HeaderMobilePage extends StatelessWidget {
  const HeaderMobilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        HeaderImage(
          width: width,
          headerImagePath: AppImagesUrls.hashtag,
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: Spacing.md),
              child: Align(
                alignment: Alignment.center,
                child: Container(
                  constraints: const BoxConstraints(
                    maxWidth: AppDimensions.minDesktopWidth,
                  ),
                  child: _header(context),
                ),
              ),
            ),
            _cards(context),
          ],
        ),
      ],
    );
  }

  Widget _header(BuildContext context) => Padding(
        padding: const EdgeInsets.only(
          top: 60,
        ),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text.rich(
                TextSpan(
                  text:
                      '${LocaleKeys.headerTitle1YourPath.tr().toUpperCase()} ',
                  style: TextTheme.of(context).displaySmall,
                  children: [
                    TextSpan(
                      text: LocaleKeys.headerTitle2In.tr().toUpperCase(),
                      style: TextTheme.of(context).displaySmall,
                    )
                  ],
                ),
              ),
            ),
            AppSpacing.v_12,
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                LocaleKeys.headerTitle3Design.tr().toUpperCase(),
                style: TextTheme.of(context).displaySmall?.copyWith(
                      color: ColorName.accent,
                      fontSize: 64,
                    ),
              ),
            ),
            AppSpacing.v_12,
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                LocaleKeys.headerTitle4StartsHere.tr().toUpperCase(),
                style: TextTheme.of(context).displaySmall,
              ),
            ),
            AppSpacing.v_24,
            SizedBox(
              width: double.infinity,
              child: ElevatedButtonType1(
                text: LocaleKeys.freeTrialLesson.tr(),
                onPressed: () =>
                    context.read<AppBloc>().add(const AppEvent.freeLesson()),
              ),
            ),
            _headerSubTitle(context),
          ],
        ),
      );

  Widget _headerSubTitle(BuildContext context) {
    final style = TextTheme.of(context).bodyMedium?.copyWith(
          color: ColorName.descriptionText,
          fontSize: AppTextSizes.mobileSubTitleSize,
        );
    return Padding(
      padding: const EdgeInsets.only(
        top: 64,
      ),
      child: Text.rich(
        TextSpan(
          text: LocaleKeys.headerSubTitle1.tr(),
          style: style,
          children: [
            TextSpan(
              text: LocaleKeys.headerSubTitle2.tr(),
              style: style?.copyWith(
                color: ColorName.accent,
                fontWeight: FontWeight.w600,
              ),
            ),
            TextSpan(
              text: LocaleKeys.headerSubTitle3.tr(),
              style: style,
            ),
            TextSpan(
              text: LocaleKeys.headerSubTitle4.tr(),
              style: style?.copyWith(
                color: ColorName.accent,
                fontWeight: FontWeight.w600,
              ),
            ),
            TextSpan(
              text: LocaleKeys.headerSubTitle5.tr(),
              style: style,
            ),
            TextSpan(
              text: LocaleKeys.headerSubTitle6.tr(),
              style: style?.copyWith(
                color: ColorName.accent,
                fontWeight: FontWeight.w600,
              ),
            ),
            TextSpan(
              text: LocaleKeys.headerSubTitle7.tr(),
              style: style,
            ),
            TextSpan(
              text: LocaleKeys.headerSubTitle8.tr(),
              style: style?.copyWith(
                color: ColorName.accent,
                fontWeight: FontWeight.w600,
              ),
            ),
            TextSpan(
              text: LocaleKeys.headerSubTitle9.tr(),
              style: style,
            ),
            TextSpan(
              text: LocaleKeys.headerSubTitle10.tr(),
              style: style?.copyWith(
                color: ColorName.accent,
                fontWeight: FontWeight.w600,
              ),
            ),
            TextSpan(
              text: LocaleKeys.headerSubTitle11.tr(),
              style: style,
            ),
          ],
        ),
      ),
    );
  }

  Widget _cards(BuildContext context) => Padding(
        padding: const EdgeInsets.only(
          top: 60,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: IntrinsicHeight(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppSpacing.h_16,
                HeaderCardInfoWidget(
                  title: LocaleKeys.headerCardTitle1.tr(),
                  titleStyle: TextTheme.of(context).headlineSmall?.copyWith(
                        color: ColorName.title,
                        fontWeight: FontWeight.bold,
                      ),
                  subtitle: Text.rich(
                    TextSpan(
                      text: LocaleKeys.headerCardSubTitle11.tr(),
                      style: TextTheme.of(context).bodyMedium?.copyWith(
                            color: ColorName.accent,
                            fontWeight: FontWeight.w600,
                            fontSize: AppTextSizes.mobileSubTitleSize,
                          ),
                      children: [
                        TextSpan(
                          text: LocaleKeys.headerCardSubTitle12.tr(),
                          style: TextTheme.of(context).bodyMedium?.copyWith(
                                color: ColorName.descriptionText,
                                fontWeight: FontWeight.normal,
                                fontSize: AppTextSizes.mobileSubTitleSize,
                              ),
                        ),
                      ],
                    ),
                  ),
                ),
                AppSpacing.h_16,
                HeaderCardInfoWidget(
                  title: LocaleKeys.headerCardTitle2.tr(),
                  titleStyle: TextTheme.of(context).headlineSmall?.copyWith(
                        color: ColorName.title,
                        fontWeight: FontWeight.bold,
                      ),
                  subtitle: Text.rich(
                    TextSpan(
                      text: LocaleKeys.headerCardSubTitle21.tr(),
                      style: TextTheme.of(context).bodyMedium?.copyWith(
                            color: ColorName.accent,
                            fontWeight: FontWeight.w600,
                            fontSize: AppTextSizes.mobileSubTitleSize,
                          ),
                      children: [
                        TextSpan(
                          text: LocaleKeys.headerCardSubTitle22.tr(),
                          style: TextTheme.of(context).bodyMedium?.copyWith(
                                color: ColorName.descriptionText,
                                fontWeight: FontWeight.normal,
                                fontSize: AppTextSizes.mobileSubTitleSize,
                              ),
                        ),
                      ],
                    ),
                  ),
                ),
                AppSpacing.h_16,
                HeaderCardInfoWidget(
                  title: LocaleKeys.headerCardTitle3.tr(),
                  titleStyle: TextTheme.of(context).headlineSmall?.copyWith(
                        color: ColorName.title,
                        fontWeight: FontWeight.bold,
                      ),
                  subtitle: Text.rich(
                    TextSpan(
                      text: LocaleKeys.headerCardSubTitle31.tr(),
                      style: TextTheme.of(context).bodyMedium?.copyWith(
                            color: ColorName.descriptionText,
                            fontWeight: FontWeight.normal,
                            fontSize: AppTextSizes.mobileSubTitleSize,
                          ),
                      children: [
                        TextSpan(
                          text: LocaleKeys.headerCardSubTitle32.tr(),
                          style: TextTheme.of(context).bodyMedium?.copyWith(
                                color: ColorName.accent,
                                fontWeight: FontWeight.w600,
                                fontSize: AppTextSizes.mobileSubTitleSize,
                              ),
                        ),
                        TextSpan(
                          text: LocaleKeys.headerCardSubTitle33.tr(),
                          style: TextTheme.of(context).bodyMedium?.copyWith(
                                color: ColorName.descriptionText,
                                fontWeight: FontWeight.normal,
                                fontSize: AppTextSizes.mobileSubTitleSize,
                              ),
                        ),
                      ],
                    ),
                  ),
                ),
                AppSpacing.h_16,
                HeaderCardInfoWidget(
                  title: LocaleKeys.headerCardTitle4.tr(),
                  titleStyle: TextTheme.of(context).headlineSmall?.copyWith(
                        color: ColorName.title,
                        fontWeight: FontWeight.bold,
                      ),
                  subtitle: Text.rich(
                    TextSpan(
                      text: LocaleKeys.headerCardSubTitle41.tr(),
                      style: TextTheme.of(context).bodyMedium?.copyWith(
                            color: ColorName.accent,
                            fontWeight: FontWeight.w600,
                            fontSize: AppTextSizes.mobileSubTitleSize,
                          ),
                      children: [
                        TextSpan(
                          text: LocaleKeys.headerCardSubTitle42.tr(),
                          style: TextTheme.of(context).bodyMedium?.copyWith(
                                color: ColorName.descriptionText,
                                fontWeight: FontWeight.normal,
                                fontSize: AppTextSizes.mobileSubTitleSize,
                              ),
                        ),
                      ],
                    ),
                  ),
                ),
                AppSpacing.h_16,
              ],
            ),
          ),
        ),
      );
}

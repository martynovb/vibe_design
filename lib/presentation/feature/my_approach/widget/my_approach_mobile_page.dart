part of '../my_approach.dart';

class MyApproachMobilePage extends StatelessWidget {
  const MyApproachMobilePage({super.key});

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
          AppSpacing.v_16,
          _infoCard(
            context: context,
            image: Image.network(
              AppImagesUrls.heart,
              width: 200,
              height: 200,
            ),
            title: LocaleKeys.myApproachCardTitle1.tr(),
            description: Text.rich(
              TextSpan(
                text: LocaleKeys.myApproachCardDescription11.tr(),
                style: TextTheme.of(context).bodyMedium?.copyWith(
                      color: ColorName.descriptionText,
                      fontWeight: FontWeight.normal,
                      fontSize: AppTextSizes.mobileSubTitleSize,
                    ),
                children: [
                  TextSpan(
                    text: LocaleKeys.myApproachCardDescription12.tr(),
                    style: TextTheme.of(context).bodyMedium?.copyWith(
                          color: ColorName.accent,
                          fontWeight: FontWeight.bold,
                          fontSize: AppTextSizes.mobileSubTitleSize,
                        ),
                  ),
                  TextSpan(
                    text: LocaleKeys.myApproachCardDescription13.tr(),
                    style: TextTheme.of(context).bodyMedium?.copyWith(
                          color: ColorName.descriptionText,
                          fontWeight: FontWeight.normal,
                          fontSize: AppTextSizes.mobileSubTitleSize,
                        ),
                  ),
                  TextSpan(
                    text: LocaleKeys.myApproachCardDescription14.tr(),
                    style: TextTheme.of(context).bodyMedium?.copyWith(
                          color: ColorName.accent,
                          fontWeight: FontWeight.bold,
                          fontSize: AppTextSizes.mobileSubTitleSize,
                        ),
                  ),
                  TextSpan(
                    text: LocaleKeys.myApproachCardDescription15.tr(),
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
          AppSpacing.v_16,
          _infoCard(
            context: context,
            image: Image.network(
              AppImagesUrls.targetVertical,
              width: 200,
              height: 200,
            ),
            title: LocaleKeys.myApproachCardTitle3.tr(),
            description: Text.rich(
              TextSpan(
                text: LocaleKeys.myApproachCardDescription31.tr(),
                style: TextTheme.of(context).bodyMedium?.copyWith(
                      color: ColorName.descriptionText,
                      fontWeight: FontWeight.normal,
                      fontSize: AppTextSizes.mobileSubTitleSize,
                    ),
                children: [
                  TextSpan(
                    text: LocaleKeys.myApproachCardDescription32.tr(),
                    style: TextTheme.of(context).bodyMedium?.copyWith(
                          color: ColorName.accent,
                          fontWeight: FontWeight.bold,
                          fontSize: AppTextSizes.mobileSubTitleSize,
                        ),
                  ),
                  TextSpan(
                    text: LocaleKeys.myApproachCardDescription33.tr(),
                    style: TextTheme.of(context).bodyMedium?.copyWith(
                          color: ColorName.descriptionText,
                          fontWeight: FontWeight.normal,
                          fontSize: AppTextSizes.mobileSubTitleSize,
                        ),
                  ),
                  TextSpan(
                    text: LocaleKeys.myApproachCardDescription34.tr(),
                    style: TextTheme.of(context).bodyMedium?.copyWith(
                          color: ColorName.accent,
                          fontWeight: FontWeight.bold,
                          fontSize: AppTextSizes.mobileSubTitleSize,
                        ),
                  ),
                  TextSpan(
                    text: LocaleKeys.myApproachCardDescription35.tr(),
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
          AppSpacing.v_16,
          _infoCard(
            context: context,
            image: Image.network(
              AppImagesUrls.cup,
              width: 200,
              height: 200,
            ),
            title: LocaleKeys.myApproachCardTitle2.tr(),
            description: Text.rich(
              TextSpan(
                text: LocaleKeys.myApproachCardDescription21.tr(),
                style: TextTheme.of(context).bodyMedium?.copyWith(
                      color: ColorName.descriptionText,
                      fontWeight: FontWeight.normal,
                      fontSize: AppTextSizes.mobileSubTitleSize,
                    ),
                children: [
                  TextSpan(
                    text: LocaleKeys.myApproachCardDescription22.tr(),
                    style: TextTheme.of(context).bodyMedium?.copyWith(
                          color: ColorName.accent,
                          fontWeight: FontWeight.bold,
                          fontSize: AppTextSizes.mobileSubTitleSize,
                        ),
                  ),
                  TextSpan(
                    text: LocaleKeys.myApproachCardDescription23.tr(),
                    style: TextTheme.of(context).bodyMedium?.copyWith(
                          color: ColorName.descriptionText,
                          fontWeight: FontWeight.normal,
                          fontSize: AppTextSizes.mobileSubTitleSize,
                        ),
                  ),
                  TextSpan(
                    text: LocaleKeys.myApproachCardDescription24.tr(),
                    style: TextTheme.of(context).bodyMedium?.copyWith(
                          color: ColorName.accent,
                          fontWeight: FontWeight.bold,
                          fontSize: AppTextSizes.mobileSubTitleSize,
                        ),
                  ),
                  TextSpan(
                    text: LocaleKeys.myApproachCardDescription25.tr(),
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
          AppSpacing.v_16,
          _infoCard(
            context: context,
            image: Image.network(
              AppImagesUrls.rocket,
              width: 200,
              height: 200,
            ),
            title: LocaleKeys.myApproachCardTitle4.tr(),
            description: Text.rich(
              TextSpan(
                text: LocaleKeys.myApproachCardDescription41.tr(),
                style: TextTheme.of(context).bodyMedium?.copyWith(
                      color: ColorName.descriptionText,
                      fontWeight: FontWeight.normal,
                      fontSize: AppTextSizes.mobileSubTitleSize,
                    ),
                children: [
                  TextSpan(
                    text: LocaleKeys.myApproachCardDescription42.tr(),
                    style: TextTheme.of(context).bodyMedium?.copyWith(
                          color: ColorName.accent,
                          fontWeight: FontWeight.bold,
                          fontSize: AppTextSizes.mobileSubTitleSize,
                        ),
                  ),
                  TextSpan(
                    text: LocaleKeys.myApproachCardDescription43.tr(),
                    style: TextTheme.of(context).bodyMedium?.copyWith(
                          color: ColorName.descriptionText,
                          fontWeight: FontWeight.normal,
                          fontSize: AppTextSizes.mobileSubTitleSize,
                        ),
                  ),
                  TextSpan(
                    text: LocaleKeys.myApproachCardDescription44.tr(),
                    style: TextTheme.of(context).bodyMedium?.copyWith(
                          color: ColorName.accent,
                          fontWeight: FontWeight.bold,
                          fontSize: AppTextSizes.mobileSubTitleSize,
                        ),
                  ),
                  TextSpan(
                    text: LocaleKeys.myApproachCardDescription45.tr(),
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
          AppSpacing.v_16,
          Text.rich(
            TextSpan(
              text: '"',
              style: TextTheme.of(context).bodyMedium?.copyWith(
                    color: ColorName.title,
                    fontWeight: FontWeight.normal,
                    fontSize: AppTextSizes.mobileSubTitleSize,
                  ),
              children: [
                TextSpan(
                  text: LocaleKeys.myApproachBottomDescription11.tr(),
                  style: TextTheme.of(context).bodyMedium?.copyWith(
                        color: ColorName.accent,
                        fontWeight: FontWeight.w600,
                        fontSize: AppTextSizes.mobileSubTitleSize,
                      ),
                ),
                TextSpan(
                  text: LocaleKeys.myApproachBottomDescription12.tr(),
                  style: TextTheme.of(context).bodyMedium?.copyWith(
                        color: ColorName.title,
                        fontWeight: FontWeight.normal,
                        fontSize: AppTextSizes.mobileSubTitleSize,
                      ),
                ),
                TextSpan(
                  text: '"',
                  style: TextTheme.of(context).bodyMedium?.copyWith(
                        color: ColorName.title,
                        fontWeight: FontWeight.normal,
                        fontSize: AppTextSizes.mobileSubTitleSize,
                      ),
                )
              ],
            ),
          ),
          Text.rich(
            TextSpan(
              text: '"',
              style: TextTheme.of(context).bodyMedium?.copyWith(
                    color: ColorName.title,
                    fontWeight: FontWeight.normal,
                  ),
              children: [
                TextSpan(
                  text: LocaleKeys.myApproachBottomDescription21.tr(),
                  style: TextTheme.of(context).bodyMedium?.copyWith(
                        color: ColorName.accent,
                        fontWeight: FontWeight.w600,
                        fontSize: AppTextSizes.mobileSubTitleSize,
                      ),
                ),
                TextSpan(
                  text: LocaleKeys.myApproachBottomDescription22.tr(),
                  style: TextTheme.of(context).bodyMedium?.copyWith(
                        color: ColorName.title,
                        fontWeight: FontWeight.normal,
                        fontSize: AppTextSizes.mobileSubTitleSize,
                      ),
                ),
                TextSpan(
                  text: '"',
                  style: TextTheme.of(context).bodyMedium?.copyWith(
                        color: ColorName.title,
                        fontWeight: FontWeight.normal,
                        fontSize: AppTextSizes.mobileSubTitleSize,
                      ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _title(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: LocaleKeys.myApproachTitle1.tr(),
        style: TextTheme.of(context).displaySmall?.copyWith(
              color: ColorName.title,
              fontWeight: FontWeight.w600,
            ),
        children: [
          TextSpan(
            text: LocaleKeys.myApproachTitle2.tr(),
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
        text: LocaleKeys.myApproachSubTitle1.tr(),
        style: TextTheme.of(context).bodyMedium?.copyWith(
              color: ColorName.title,
              fontWeight: FontWeight.normal,
              fontSize: AppTextSizes.mobileSubTitleSize,
            ),
        children: [
          TextSpan(
            text: LocaleKeys.myApproachSubTitle2.tr(),
            style: TextTheme.of(context).bodyMedium?.copyWith(
                  color: ColorName.accent,
                  fontWeight: FontWeight.w600,
                  fontSize: AppTextSizes.mobileSubTitleSize,
                ),
          ),
          TextSpan(
            text: LocaleKeys.myApproachSubTitle3.tr(),
            style: TextTheme.of(context).bodyMedium?.copyWith(
                  color: ColorName.title,
                  fontWeight: FontWeight.normal,
                  fontSize: AppTextSizes.mobileSubTitleSize,
                ),
          ),
          TextSpan(
            text: LocaleKeys.myApproachSubTitle4.tr(),
            style: TextTheme.of(context).bodyMedium?.copyWith(
                  color: ColorName.accent,
                  fontWeight: FontWeight.w600,
                  fontSize: AppTextSizes.mobileSubTitleSize,
                ),
          ),
          TextSpan(
            text: "!",
            style: TextTheme.of(context).bodyMedium?.copyWith(
                  color: ColorName.title,
                  fontWeight: FontWeight.normal,
                ),
          ),
        ],
      ),
    );
  }

  Widget _infoCard({
    required BuildContext context,
    required Image image,
    required String title,
    required Text description,
  }) {
    return Card(
      color: ColorName.card,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      child: Padding(
        padding: const EdgeInsets.all(Spacing.xl),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: image),
            AppSpacing.v_24,
            Text(
              title,
              style: TextTheme.of(context).headlineMedium?.copyWith(
                    color: ColorName.title,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            AppSpacing.v_24,
            description,
          ],
        ),
      ),
    );
  }
}

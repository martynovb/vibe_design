part of '../my_approach.dart';

class MyApproachDesktopPage extends StatelessWidget {
  const MyApproachDesktopPage({super.key});

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
            _description(context),
            AppSpacing.v_64,
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
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
                              ),
                          children: [
                            TextSpan(
                              text: LocaleKeys.myApproachCardDescription12.tr(),
                              style: TextTheme.of(context).bodyMedium?.copyWith(
                                    color: ColorName.accent,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                            TextSpan(
                              text: LocaleKeys.myApproachCardDescription13.tr(),
                              style: TextTheme.of(context).bodyMedium?.copyWith(
                                    color: ColorName.descriptionText,
                                    fontWeight: FontWeight.normal,
                                  ),
                            ),
                            TextSpan(
                              text: LocaleKeys.myApproachCardDescription14.tr(),
                              style: TextTheme.of(context).bodyMedium?.copyWith(
                                    color: ColorName.accent,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                            TextSpan(
                              text: LocaleKeys.myApproachCardDescription15.tr(),
                              style: TextTheme.of(context).bodyMedium?.copyWith(
                                    color: ColorName.descriptionText,
                                    fontWeight: FontWeight.normal,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    AppSpacing.v_32,
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
                              ),
                          children: [
                            TextSpan(
                              text: LocaleKeys.myApproachCardDescription32.tr(),
                              style: TextTheme.of(context).bodyMedium?.copyWith(
                                    color: ColorName.accent,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                            TextSpan(
                              text: LocaleKeys.myApproachCardDescription33.tr(),
                              style: TextTheme.of(context).bodyMedium?.copyWith(
                                    color: ColorName.descriptionText,
                                    fontWeight: FontWeight.normal,
                                  ),
                            ),
                            TextSpan(
                              text: LocaleKeys.myApproachCardDescription34.tr(),
                              style: TextTheme.of(context).bodyMedium?.copyWith(
                                    color: ColorName.accent,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                            TextSpan(
                              text: LocaleKeys.myApproachCardDescription35.tr(),
                              style: TextTheme.of(context).bodyMedium?.copyWith(
                                    color: ColorName.descriptionText,
                                    fontWeight: FontWeight.normal,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                AppSpacing.h_32,
                Column(
                  children: [
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
                              ),
                          children: [
                            TextSpan(
                              text: LocaleKeys.myApproachCardDescription22.tr(),
                              style: TextTheme.of(context).bodyMedium?.copyWith(
                                    color: ColorName.accent,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                            TextSpan(
                              text: LocaleKeys.myApproachCardDescription23.tr(),
                              style: TextTheme.of(context).bodyMedium?.copyWith(
                                    color: ColorName.descriptionText,
                                    fontWeight: FontWeight.normal,
                                  ),
                            ),
                            TextSpan(
                              text: LocaleKeys.myApproachCardDescription24.tr(),
                              style: TextTheme.of(context).bodyMedium?.copyWith(
                                    color: ColorName.accent,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                            TextSpan(
                              text: LocaleKeys.myApproachCardDescription25.tr(),
                              style: TextTheme.of(context).bodyMedium?.copyWith(
                                    color: ColorName.descriptionText,
                                    fontWeight: FontWeight.normal,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    AppSpacing.v_32,
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
                              ),
                          children: [
                            TextSpan(
                              text: LocaleKeys.myApproachCardDescription42.tr(),
                              style: TextTheme.of(context).bodyMedium?.copyWith(
                                    color: ColorName.accent,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                            TextSpan(
                              text: LocaleKeys.myApproachCardDescription43.tr(),
                              style: TextTheme.of(context).bodyMedium?.copyWith(
                                    color: ColorName.descriptionText,
                                    fontWeight: FontWeight.normal,
                                  ),
                            ),
                            TextSpan(
                              text: LocaleKeys.myApproachCardDescription44.tr(),
                              style: TextTheme.of(context).bodyMedium?.copyWith(
                                    color: ColorName.accent,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                            TextSpan(
                              text: LocaleKeys.myApproachCardDescription45.tr(),
                              style: TextTheme.of(context).bodyMedium?.copyWith(
                                    color: ColorName.descriptionText,
                                    fontWeight: FontWeight.normal,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    AppSpacing.v_32,
                    SizedBox(
                      width: 600,
                      child: Text.rich(
                        TextSpan(
                          text: '"',
                          style: TextTheme.of(context).headlineSmall?.copyWith(
                                color: ColorName.title,
                                fontWeight: FontWeight.normal,
                              ),
                          children: [
                            TextSpan(
                              text:
                                  LocaleKeys.myApproachBottomDescription11.tr(),
                              style:
                                  TextTheme.of(context).headlineSmall?.copyWith(
                                        color: ColorName.accent,
                                        fontWeight: FontWeight.w600,
                                      ),
                            ),
                            TextSpan(
                              text:
                                  LocaleKeys.myApproachBottomDescription12.tr(),
                              style:
                                  TextTheme.of(context).headlineSmall?.copyWith(
                                        color: ColorName.title,
                                        fontWeight: FontWeight.normal,
                                      ),
                            ),
                            TextSpan(
                              text: '"',
                              style:
                                  TextTheme.of(context).headlineSmall?.copyWith(
                                        color: ColorName.title,
                                        fontWeight: FontWeight.normal,
                                      ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 600,
                      child: Text.rich(
                        TextSpan(
                          text: '"',
                          style: TextTheme.of(context).headlineSmall?.copyWith(
                                color: ColorName.title,
                                fontWeight: FontWeight.normal,
                              ),
                          children: [
                            TextSpan(
                              text:
                                  LocaleKeys.myApproachBottomDescription21.tr(),
                              style:
                                  TextTheme.of(context).headlineSmall?.copyWith(
                                        color: ColorName.accent,
                                        fontWeight: FontWeight.w600,
                                      ),
                            ),
                            TextSpan(
                              text:
                                  LocaleKeys.myApproachBottomDescription22.tr(),
                              style:
                                  TextTheme.of(context).headlineSmall?.copyWith(
                                        color: ColorName.title,
                                        fontWeight: FontWeight.normal,
                                      ),
                            ),
                            TextSpan(
                              text: '"',
                              style:
                                  TextTheme.of(context).headlineSmall?.copyWith(
                                        color: ColorName.title,
                                        fontWeight: FontWeight.normal,
                                      ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _title(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: LocaleKeys.myApproachTitle1.tr(),
        style: TextTheme.of(context).displayMedium?.copyWith(
              color: ColorName.title,
              fontWeight: FontWeight.w600,
            ),
        children: [
          TextSpan(
            text: LocaleKeys.myApproachTitle2.tr(),
            style: TextTheme.of(context).displayMedium?.copyWith(
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
        style: TextTheme.of(context).headlineSmall?.copyWith(
              color: ColorName.title,
              fontWeight: FontWeight.normal,
            ),
        children: [
          TextSpan(
            text: LocaleKeys.myApproachSubTitle2.tr(),
            style: TextTheme.of(context).headlineSmall?.copyWith(
                  color: ColorName.accent,
                  fontWeight: FontWeight.w600,
                ),
          ),
          TextSpan(
            text: LocaleKeys.myApproachSubTitle3.tr(),
            style: TextTheme.of(context).headlineSmall?.copyWith(
                  color: ColorName.title,
                  fontWeight: FontWeight.normal,
                ),
          ),
          TextSpan(
            text: LocaleKeys.myApproachSubTitle4.tr(),
            style: TextTheme.of(context).headlineSmall?.copyWith(
                  color: ColorName.accent,
                  fontWeight: FontWeight.w600,
                ),
          ),
          TextSpan(
            text: "!",
            style: TextTheme.of(context).headlineSmall?.copyWith(
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
    double? width = 600,
    double? height,
  }) {
    return SizedBox(
      width: width,
      height: height,
      child: Card(
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
      ),
    );
  }
}

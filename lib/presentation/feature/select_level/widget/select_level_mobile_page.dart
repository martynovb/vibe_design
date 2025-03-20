part of '../select_level.dart';

class SelectLevelMobilePage extends StatelessWidget {
  const SelectLevelMobilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Spacing.md),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text.rich(
            TextSpan(
              text: LocaleKeys.selectLevelTitle1.tr(),
              style: TextTheme.of(context).displaySmall?.copyWith(
                    color: ColorName.title,
                    fontWeight: FontWeight.w600,
                  ),
              children: [
                TextSpan(
                  text: LocaleKeys.selectLevelTitle2.tr(),
                  style: TextTheme.of(context).displaySmall?.copyWith(
                        color: ColorName.title,
                        fontWeight: FontWeight.w800,
                      ),
                ),
                TextSpan(
                  text: LocaleKeys.selectLevelTitle3.tr(),
                  style: TextTheme.of(context).displaySmall?.copyWith(
                        color: ColorName.title,
                        fontWeight: FontWeight.w600,
                      ),
                ),
                TextSpan(
                  text: LocaleKeys.selectLevelTitle4.tr(),
                  style: TextTheme.of(context).displaySmall?.copyWith(
                        color: ColorName.title,
                        fontWeight: FontWeight.w800,
                      ),
                ),
              ],
            ),
          ),
          AppSpacing.v_8,
          Text.rich(
            TextSpan(
              text: '"',
              style: TextTheme.of(context).bodyMedium?.copyWith(
                    color: ColorName.title,
                  ),
              children: [
                TextSpan(
                  text: LocaleKeys.selectLevelSubTitle1.tr(),
                  style: TextTheme.of(context).bodyMedium?.copyWith(
                        color: ColorName.accent,
                        fontWeight: FontWeight.w600,
                      ),
                ),
                TextSpan(
                  text: LocaleKeys.selectLevelSubTitle2.tr(),
                  style: TextTheme.of(context).bodyMedium?.copyWith(
                        color: ColorName.title,
                        fontWeight: FontWeight.normal,
                      ),
                ),
                TextSpan(
                  text: '"',
                  style: TextTheme.of(context).bodyMedium?.copyWith(
                        color: ColorName.title,
                      ),
                ),
              ],
            ),
          ),
          AppSpacing.v_16,
          _cards(context),
        ],
      ),
    );
  }

  Widget _cards(BuildContext context) {
    List<Widget> cards = [
      _infoCard(
        height: 627,
        context: context,
        image: Assets.images.coin.image(
          width: 232,
          height: 157,
        ),
        title: LocaleKeys.selectLevelCardTitle1.tr(),
        description: Text.rich(
          TextSpan(
            text: LocaleKeys.selectLevelCardDescription11.tr(),
            style: TextTheme.of(context).bodyMedium?.copyWith(
                  color: ColorName.descriptionText,
                  fontWeight: FontWeight.normal,
                ),
            children: [
              TextSpan(
                text: LocaleKeys.selectLevelCardDescription12.tr(),
                style: TextTheme.of(context).bodyMedium?.copyWith(
                      color: ColorName.accent,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              TextSpan(
                text: LocaleKeys.selectLevelCardDescription13.tr(),
                style: TextTheme.of(context).bodyMedium?.copyWith(
                      color: ColorName.descriptionText,
                      fontWeight: FontWeight.normal,
                    ),
              ),
            ],
          ),
        ),
        tag1Text: LocaleKeys.selectLevelCardTag11.tr(),
        tag2Text: LocaleKeys.selectLevelCardTag12.tr(),
        tag3Text: LocaleKeys.selectLevelCardTag13.tr(),
      ),
      _infoCard(
        height: 564,
        context: context,
        image: Assets.images.dollarBill.image(
          width: 232,
          height: 157,
        ),
        title: LocaleKeys.selectLevelCardTitle2.tr(),
        description: Text.rich(
          TextSpan(
            text: LocaleKeys.selectLevelCardDescription21.tr(),
            style: TextTheme.of(context).bodyMedium?.copyWith(
                  color: ColorName.descriptionText,
                  fontWeight: FontWeight.normal,
                ),
            children: [
              TextSpan(
                text: LocaleKeys.selectLevelCardDescription22.tr(),
                style: TextTheme.of(context).bodyMedium?.copyWith(
                      color: ColorName.accent,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              TextSpan(
                text: LocaleKeys.selectLevelCardDescription23.tr(),
                style: TextTheme.of(context).bodyMedium?.copyWith(
                      color: ColorName.descriptionText,
                      fontWeight: FontWeight.normal,
                    ),
              ),
            ],
          ),
        ),
        tag1Text: LocaleKeys.selectLevelCardTag21.tr(),
        tag2Text: LocaleKeys.selectLevelCardTag22.tr(),
        tag3Text: LocaleKeys.selectLevelCardTag23.tr(),
      ),
      _infoCard(
        height: 564,
        context: context,
        image: Assets.images.billsAndCoins.image(
          width: 232,
          height: 157,
        ),
        title: LocaleKeys.selectLevelCardTitle3.tr(),
        description: Text.rich(
          TextSpan(
            text: LocaleKeys.selectLevelCardDescription31.tr(),
            style: TextTheme.of(context).bodyMedium?.copyWith(
                  color: ColorName.descriptionText,
                  fontWeight: FontWeight.normal,
                ),
            children: [
              TextSpan(
                text: LocaleKeys.selectLevelCardDescription32.tr(),
                style: TextTheme.of(context).bodyMedium?.copyWith(
                      color: ColorName.accent,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              TextSpan(
                text: LocaleKeys.selectLevelCardDescription33.tr(),
                style: TextTheme.of(context).bodyMedium?.copyWith(
                      color: ColorName.descriptionText,
                      fontWeight: FontWeight.normal,
                    ),
              ),
            ],
          ),
        ),
        tag1Text: LocaleKeys.selectLevelCardTag31.tr(),
        tag2Text: LocaleKeys.selectLevelCardTag32.tr(),
        tag3Text: LocaleKeys.selectLevelCardTag33.tr(),
      ),
      _infoCard(
        height: 627,
        context: context,
        image: Assets.images.moneyBrick.image(
          width: 232,
          height: 157,
        ),
        title: LocaleKeys.selectLevelCardTitle4.tr(),
        description: Text.rich(
          TextSpan(
            text: LocaleKeys.selectLevelCardDescription41.tr(),
            style: TextTheme.of(context).bodyMedium?.copyWith(
                  color: ColorName.descriptionText,
                  fontWeight: FontWeight.normal,
                ),
            children: [
              TextSpan(
                text: LocaleKeys.selectLevelCardDescription42.tr(),
                style: TextTheme.of(context).bodyMedium?.copyWith(
                      color: ColorName.accent,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              TextSpan(
                text: LocaleKeys.selectLevelCardDescription43.tr(),
                style: TextTheme.of(context).bodyMedium?.copyWith(
                      color: ColorName.descriptionText,
                      fontWeight: FontWeight.normal,
                    ),
              ),
            ],
          ),
        ),
        tag1Text: LocaleKeys.selectLevelCardTag41.tr(),
        tag2Text: LocaleKeys.selectLevelCardTag42.tr(),
        tag3Text: LocaleKeys.selectLevelCardTag43.tr(),
      ),
    ];

    return Column(
      children: [
        cards[0],
        AppSpacing.v_16,
        cards[1],
        AppSpacing.v_16,
        cards[2],
        AppSpacing.v_16,
        cards[3],
      ],
    );
  }

  Widget _infoCard({
    required BuildContext context,
    required Image image,
    required String title,
    required Text description,
    required String tag1Text,
    required String tag2Text,
    required String tag3Text,
    required double height,
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
            AppSpacing.v_40,
            Row(
              children: [
                Expanded(
                  child: _tag(context, tag1Text),
                ),
                AppSpacing.h_16,
                Expanded(
                  child: _tag(context, tag2Text),
                ),
              ],
            ),
            AppSpacing.v_16,
            SizedBox(
              width: double.infinity,
              child: _tag(context, tag3Text),
            ),
          ],
        ),
      ),
    );
  }

  Widget _tag(BuildContext context, String text) {
    return Container(
      constraints: BoxConstraints(
        minHeight: 54,
      ),
      padding: const EdgeInsets.symmetric(
        vertical: Spacing.sm,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        border: Border.all(
          color: ColorName.descriptionText,
          width: 1,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: Spacing.xxs,
          horizontal: Spacing.xs,
        ),
        child: Center(
          child: FittedBox(
            child: Text(
              text,
              style: TextTheme.of(context).bodyMedium?.copyWith(
                    color: ColorName.title,
                  ),
            ),
          ),
        ),
      ),
    );
  }
}

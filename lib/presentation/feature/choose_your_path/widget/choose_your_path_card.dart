import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../gen/colors.gen.dart';
import '../../../shared/localization/locale_keys.g.dart';
import '../../../shared/styles/app_dimensions.dart';
import '../model/choose_your_path_model.dart';

class ChooseYourPathCard extends StatelessWidget {
  final ChooseYourPathModel chooseYourPathModel;
  final VoidCallback onDetailsPressed;
  final double maxWidth;
  final double sideTitleTextSize;
  final double titleTextSize;
  final double tagTextSize;
  final double descriptionTextSize;
  final bool isMobile;

  const ChooseYourPathCard({
    super.key,
    required this.chooseYourPathModel,
    required this.onDetailsPressed,
    this.maxWidth = 508,
    this.sideTitleTextSize = 32,
    this.titleTextSize = 40,
    this.tagTextSize = 24,
    this.descriptionTextSize = 20,
    this.isMobile = false,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 72, bottom: 72),
            child: Container(
              height: double.infinity,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  bottomLeft: Radius.circular(30),
                ),
                color: ColorName.card,
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  vertical: isMobile ? Spacing.md : Spacing.xl,
                  horizontal: isMobile ? Spacing.sm : Spacing.lg,
                ),
                child: Center(
                  child: RotatedBox(
                    quarterTurns: -1,
                    child: Text(
                      chooseYourPathModel.cardName,
                      style: TextTheme.of(context).headlineMedium?.copyWith(
                            color: ColorName.title,
                            fontWeight: FontWeight.bold,
                            fontSize: sideTitleTextSize,
                          ),
                    ).tr(),
                  ),
                ),
              ),
            ),
          ),
        ),
        IntrinsicWidth(
          child: Container(
            constraints: BoxConstraints(maxWidth: maxWidth),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(30)),
              color: ColorName.card,
              border: Border.all(
                color: ColorName.background,
                width: 1,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(Spacing.lg),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      chooseYourPathModel.price,
                      style: TextTheme.of(context).headlineLarge?.copyWith(
                            color: ColorName.title,
                            fontWeight: FontWeight.bold,
                            fontSize: titleTextSize,
                          ),
                    ).tr(),
                  ),
                  AppSpacing.v_16,
                  Row(
                    children: [
                      Expanded(
                        child: _tag(context, chooseYourPathModel.tag1),
                      ),
                      AppSpacing.h_16,
                      Expanded(
                        child: _tag(context, chooseYourPathModel.tag2),
                      ),
                    ],
                  ),
                  AppSpacing.v_16,
                  SizedBox(
                    width: double.infinity,
                    child: _tag(context, chooseYourPathModel.tag3),
                  ),
                  AppSpacing.v_40,
                  Container(
                    constraints: BoxConstraints(maxWidth: 470),
                    child: Column(
                      children: [
                        _bulletPointText(
                          context: context,
                          index: 1,
                          text: chooseYourPathModel.description1,
                        ),
                        _bulletPointText(
                          context: context,
                          index: 2,
                          text: chooseYourPathModel.description2,
                        ),
                        _bulletPointText(
                          context: context,
                          index: 3,
                          text: chooseYourPathModel.description3,
                        ),
                        _bulletPointText(
                          context: context,
                          index: 4,
                          text: chooseYourPathModel.description4,
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  _moreButton(context),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget _tag(BuildContext context, String text) {
    return Container(
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
      child: Center(
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextTheme.of(context).bodyMedium?.copyWith(
                color: ColorName.title,
                fontSize: tagTextSize,
              ),
        ).tr(),
      ),
    );
  }

  Widget _bulletPointText({
    required BuildContext context,
    required int index,
    required String text,
  }) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        color: index % 2 != 0 ? ColorName.background : Colors.transparent,
      ),
      child: Padding(
        padding: const EdgeInsets.all(Spacing.sm),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              LocaleKeys.buletPoint.tr(),
              style: TextTheme.of(context).bodyMedium?.copyWith(
                    color: ColorName.descriptionText,
                    fontWeight: FontWeight.normal,
                    fontSize: descriptionTextSize,
                  ),
            ),
            AppSpacing.h_8,
            Expanded(
              child: Text(
                text,
                softWrap: true,
                style: TextTheme.of(context).bodyMedium?.copyWith(
                      color: ColorName.descriptionText,
                      fontWeight: FontWeight.normal,
                      fontSize: descriptionTextSize,
                    ),
              ).tr(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _moreButton(BuildContext context) {
    return Center(
      child: InkWell(
        hoverColor: Colors.transparent,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: onDetailsPressed,
        child: IntrinsicWidth(
          child: Container(
            padding: const EdgeInsets.symmetric(
              vertical: Spacing.sm,
              horizontal: Spacing.xl,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: ColorName.accent,
            ),
            child: Center(
              child: Text(
                LocaleKeys.chooseYourPathSection_CardMore.tr(),
                style: TextTheme.of(context).bodyMedium?.copyWith(
                      color: ColorName.card,
                      fontWeight: FontWeight.bold,
                      fontSize: descriptionTextSize,
                    ),
              ).tr(),
            ),
          ),
        ),
      ),
    );
  }
}

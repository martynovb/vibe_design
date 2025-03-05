import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../gen/colors.gen.dart';
import '../../../shared/localization/locale_keys.g.dart';
import '../../../shared/styles/app_dimensions.dart';

class ChooseYourPathCard extends StatelessWidget {
  final String cardName;
  final String price;
  final String tag1;
  final String tag2;
  final String tag3;
  final String description1;
  final String description2;
  final String description3;
  final String description4;
  final String description5;
  final VoidCallback onDetailsPressed;

  const ChooseYourPathCard({
    super.key,
    required this.cardName,
    required this.price,
    required this.tag1,
    required this.tag2,
    required this.tag3,
    required this.description1,
    required this.description2,
    required this.description3,
    required this.description4,
    required this.description5,
    required this.onDetailsPressed,
  });

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
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
                    vertical: Spacing.xl,
                    horizontal: Spacing.lg,
                  ),
                  child: Center(
                    child: RotatedBox(
                      quarterTurns: -1,
                      child: Text(
                        cardName,
                        style: TextTheme.of(context).headlineMedium?.copyWith(
                              color: ColorName.title,
                              fontWeight: FontWeight.bold,
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
              constraints: BoxConstraints(maxWidth: 520),
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
                        price,
                        style: TextTheme.of(context).headlineLarge?.copyWith(
                              color: ColorName.title,
                              fontWeight: FontWeight.bold,
                            ),
                      ).tr(),
                    ),
                    AppSpacing.v_16,
                    Row(
                      children: [
                        Expanded(
                          child: _tag(context, tag1),
                        ),
                        AppSpacing.h_16,
                        Expanded(
                          child: _tag(context, tag2),
                        ),
                      ],
                    ),
                    AppSpacing.v_16,
                    SizedBox(
                      width: double.infinity,
                      child: _tag(context, tag3),
                    ),
                    AppSpacing.v_40,
                    Container(
                      constraints: BoxConstraints(maxWidth: 470),
                      child: Column(
                        children: [
                          _bulletPointText(
                            context: context,
                            index: 1,
                            text: description1,
                          ),
                          _bulletPointText(
                            context: context,
                            index: 2,
                            text: description2,
                          ),
                          _bulletPointText(
                            context: context,
                            index: 3,
                            text: description3,
                          ),
                          _bulletPointText(
                            context: context,
                            index: 4,
                            text: description4,
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
      ),
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
          style: TextTheme.of(context).bodyMedium?.copyWith(
                color: ColorName.title,
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
                    ),
              ).tr(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _moreButton(BuildContext context) {
    return InkWell(
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: onDetailsPressed,
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: Spacing.sm,
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
                ),
          ).tr(),
        ),
      ),
    );
  }
}

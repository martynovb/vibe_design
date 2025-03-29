part of '../apply_for_course.dart';

class ApplyForCourseMobilePage extends StatelessWidget {
  const ApplyForCourseMobilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: AppDimensions.minDesktopWidth,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: Spacing.md),
              child: _title(context),
            ),
            AppSpacing.v_12,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: Spacing.md),
              child: _subtitle(context),
            ),
            AppSpacing.v_24,
            _content(context),
          ],
        ),
      ),
    );
  }

  Widget _title(BuildContext context) => Text.rich(
        TextSpan(
          text: LocaleKeys.applyForCourse_title11.tr(),
          style: TextTheme.of(context).displaySmall?.copyWith(
                color: ColorName.title,
                fontWeight: FontWeight.w600,
              ),
          children: [
            TextSpan(
              text: LocaleKeys.applyForCourse_title12.tr(),
              style: TextTheme.of(context).displaySmall?.copyWith(
                    color: ColorName.title,
                    fontWeight: FontWeight.w800,
                  ),
            ),
            TextSpan(
              text: ' ${LocaleKeys.applyForCourse_title2.tr()}',
              style: TextTheme.of(context).displaySmall?.copyWith(
                    color: ColorName.title,
                    fontWeight: FontWeight.normal,
                  ),
            )
          ],
        ),
      );

  Widget _subtitle(BuildContext context) => Text.rich(
        TextSpan(
          text: '"',
          style: TextTheme.of(context).bodyMedium?.copyWith(
                color: ColorName.title,
                fontSize: AppTextSizes.mobileSubTitleSize,
              ),
          children: [
            TextSpan(
              text: LocaleKeys.applyForCourse_subtitle1.tr(),
              style: TextTheme.of(context).bodyMedium?.copyWith(
                    color: ColorName.title,
                    fontWeight: FontWeight.normal,
                    fontSize: AppTextSizes.mobileSubTitleSize,
                  ),
            ),
            TextSpan(
              text: LocaleKeys.applyForCourse_subtitle2.tr(),
              style: TextTheme.of(context).bodyMedium?.copyWith(
                    color: ColorName.accent,
                    fontWeight: FontWeight.w600,
                    fontSize: AppTextSizes.mobileSubTitleSize,
                  ),
            ),
            TextSpan(
              text: LocaleKeys.applyForCourse_subtitle3.tr(),
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
                    fontSize: AppTextSizes.mobileSubTitleSize,
                  ),
            ),
          ],
        ),
      );

  Widget _content(BuildContext context) {
    return IntrinsicHeight(
      child: Column(
        children: [
          const Image(
            image: NetworkImage(AppImagesUrls.onlineClassLaptop),
            fit: BoxFit.cover,
          ),
          AppSpacing.v_24,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: Spacing.md),
            child: Text(
              LocaleKeys.applyForCourse_description.tr(),
              style: TextTheme.of(context).headlineSmall?.copyWith(
                    color: ColorName.descriptionText,
                    fontWeight: FontWeight.normal,
                    fontSize: AppTextSizes.mobileSubTitleSize,
                  ),
            ),
          ),
          AppSpacing.v_24,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: Spacing.md),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButtonType1(
                fontSize: AppTextSizes.mobileSubTitleSize,
                text: LocaleKeys.freeTrialLesson.tr(),
                onPressed: () =>
                    context.read<AppBloc>().add(const AppEvent.freeLesson()),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

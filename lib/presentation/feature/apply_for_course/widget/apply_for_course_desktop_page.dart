part of '../apply_for_course.dart';

class ApplyForCourseDesktopPage extends StatelessWidget {
  const ApplyForCourseDesktopPage({super.key});

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
            AppSpacing.v_8,
            _subtitle(context),
            AppSpacing.v_48,
            _content(context),
          ],
        ),
      ),
    );
  }

  Widget _title(BuildContext context) => Text.rich(
        TextSpan(
          text: LocaleKeys.applyForCourse_title11.tr(),
          style: TextTheme.of(context).displayMedium?.copyWith(
                color: ColorName.title,
                fontWeight: FontWeight.w600,
              ),
          children: [
            TextSpan(
              text: LocaleKeys.applyForCourse_title12.tr(),
              style: TextTheme.of(context).displayMedium?.copyWith(
                    color: ColorName.title,
                    fontWeight: FontWeight.w800,
                  ),
            ),
          ],
        ),
      );

  Widget _subtitle(BuildContext context) => Row(
        children: [
          Text.rich(
            TextSpan(
              text: '"',
              style: TextTheme.of(context).headlineSmall?.copyWith(
                    color: ColorName.title,
                  ),
              children: [
                TextSpan(
                  text: LocaleKeys.applyForCourse_subtitle1.tr(),
                  style: TextTheme.of(context).headlineSmall?.copyWith(
                        color: ColorName.title,
                        fontWeight: FontWeight.normal,
                      ),
                ),
                TextSpan(
                  text: LocaleKeys.applyForCourse_subtitle2.tr(),
                  style: TextTheme.of(context).headlineSmall?.copyWith(
                        color: ColorName.accent,
                        fontWeight: FontWeight.w600,
                      ),
                ),
                TextSpan(
                  text: LocaleKeys.applyForCourse_subtitle3.tr(),
                  style: TextTheme.of(context).headlineSmall?.copyWith(
                        color: ColorName.title,
                        fontWeight: FontWeight.normal,
                      ),
                ),
                TextSpan(
                  text: '"',
                  style: TextTheme.of(context).headlineSmall?.copyWith(
                        color: ColorName.title,
                      ),
                ),
              ],
            ),
          ),
          const Spacer(),
          Text(
            LocaleKeys.applyForCourse_title2.tr(),
            style: TextTheme.of(context).displayMedium?.copyWith(
                  color: ColorName.title,
                  fontWeight: FontWeight.normal,
                ),
          ),
        ],
      );

  Widget _content(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        children: [
          const Expanded(
            flex: 3,
            child: Image(
              image: NetworkImage(AppImagesUrls.onlineClassLaptop),
              fit: BoxFit.cover,
            ),
          ),
          AppSpacing.h_24,
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  LocaleKeys.applyForCourse_description.tr(),
                  style: TextTheme.of(context).headlineSmall?.copyWith(
                        color: ColorName.descriptionText,
                        fontWeight: FontWeight.normal,
                      ),
                ),
                const Spacer(),
                ElevatedButtonType1(
                  text: LocaleKeys.freeTrialLesson.tr(),
                  onPressed: () =>
                      context.read<AppBloc>().add(const AppEvent.freeLesson()),
                ),
                AppSpacing.v_24,
              ],
            ),
          ),
        ],
      ),
    );
  }
}

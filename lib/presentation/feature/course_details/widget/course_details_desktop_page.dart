part of '../course_details.dart';

class CourseDetailsDesktopPage extends StatelessWidget {
  CourseDetailsDesktopPage({
    super.key,
    required CourseType courseType,
  }) : _courseDetailsModel = courseType.getCourseDetailsByType();

  final CourseDetailsModel _courseDetailsModel;
  final MenuOption _selectedMenuOption = MenuOption.pricing;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: ColorName.card.withValues(alpha: 0.4),
            child: MenuWidget(
              selectedMenuOption: _selectedMenuOption,
              onMenuOptionSelected: (menuOption) {
                handlePop(context, menuOption);
              },
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Stack(
                    children: [
                      HeaderImage(
                        headerImagePath: _courseDetailsModel.headerImagePath,
                        width: width,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          constraints: BoxConstraints(
                            maxWidth: AppDimensions.minDesktopWidth,
                          ),
                          child: _header(context),
                        ),
                      ),
                    ],
                  ),
                  AppSpacing.v_72,
                  SizedBox(
                    width: AppDimensions.minDesktopWidth,
                    child: Column(
                      children: [
                        IntrinsicHeight(
                          child: _cards(context),
                        ),
                        AppSpacing.v_64,
                        Divider(
                          height: 5,
                          color: ColorName.title,
                        ),
                        AppSpacing.v_64,
                        _infoTable(context),
                        SizedBox(height: 200),
                        _aboutCourseSection(context),
                        SizedBox(height: 200),
                        _whatIsWaitingForYouSection(context),
                        SizedBox(height: 200),
                        _coursePriceSection(context),
                        SizedBox(height: 200),
                        ChooseYourPathPage(),
                        SizedBox(height: 200),
                        ApplyForCoursePage(),
                        SizedBox(height: 200),
                      ],
                    ),
                  ),
                  FooterPage(
                    onMenuOptionPressed: (menuOption) {
                      handlePop(context, menuOption);
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void handlePop(BuildContext context, MenuOption menuOption) {
    if (menuOption == _selectedMenuOption) return;
    if (context.canPop()) {
      GoRouter.of(context).popUntil(RouteConstants.home.path, menuOption);
    } else {
      context.go(
        RouteConstants.home.path,
        extra: {
          'scrollTo': menuOption,
        },
      );
    }
  }

  Widget _coursePriceSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          LocaleKeys.course_details_coursePrice.tr(),
          style: TextTheme.of(context).displayMedium?.copyWith(
                color: ColorName.title,
                fontWeight: FontWeight.w600,
              ),
        ),
        AppSpacing.v_16,
        Align(
          alignment: Alignment.topRight,
          child: Text(
            LocaleKeys.course_details_investSubTitle.tr(),
            style: TextTheme.of(context).headlineSmall?.copyWith(
                  color: ColorName.title,
                  fontWeight: FontWeight.normal,
                ),
          ),
        ),
        AppSpacing.v_64,
        Text.rich(
          TextSpan(
            text: '${LocaleKeys.course_details_price.tr()} ',
            style: TextTheme.of(context).headlineSmall?.copyWith(
                  color: ColorName.accent,
                  fontSize: 48,
                  fontWeight: FontWeight.normal,
                ),
            children: [
              if (_courseDetailsModel.pricePrefix.tr().isNotEmpty)
                TextSpan(
                  text: '${_courseDetailsModel.pricePrefix.tr()} ',
                  style: TextTheme.of(context).headlineSmall?.copyWith(
                        color: ColorName.accent,
                        fontSize: 48,
                        fontWeight: FontWeight.normal,
                      ),
                ),
              TextSpan(
                text: '${_courseDetailsModel.price.tr()} ',
                style: TextTheme.of(context).headlineSmall?.copyWith(
                      color: ColorName.accent,
                      fontSize: 48,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              TextSpan(
                text: '${_courseDetailsModel.pricePostfix.tr()} ',
                style: TextTheme.of(context).headlineSmall?.copyWith(
                      color: ColorName.accent,
                      fontSize: 48,
                      fontWeight: FontWeight.normal,
                    ),
              ),
            ],
          ),
        ),
        AppSpacing.v_40,
        Text(
          LocaleKeys.course_details_whatYouGet.tr(),
          style: TextTheme.of(context).headlineMedium?.copyWith(
                color: ColorName.title,
                fontWeight: FontWeight.w600,
              ),
        ),
        AppSpacing.v_24,
        ListView.separated(
          shrinkWrap: true,
          itemCount: _courseDetailsModel.benefitsList.length,
          itemBuilder: (context, index) => Text.rich(
            TextSpan(
              text: _courseDetailsModel.benefitsList[index].title.tr(),
              style: TextTheme.of(context).headlineSmall?.copyWith(
                    color: ColorName.title,
                    fontWeight: FontWeight.w600,
                  ),
              children: [
                TextSpan(
                  text: _courseDetailsModel.benefitsList[index].details.tr(),
                  style: TextTheme.of(context).headlineSmall?.copyWith(
                        color: ColorName.descriptionText,
                        fontWeight: FontWeight.normal,
                      ),
                ),
              ],
            ),
          ),
          separatorBuilder: (context, index) => AppSpacing.v_12,
        ),
        AppSpacing.v_32,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              LocaleKeys.course_details_firstLessonIsFree.tr(),
              style: TextTheme.of(context).headlineMedium?.copyWith(
                    color: ColorName.title,
                    fontWeight: FontWeight.w600,
                  ),
            ),
            Expanded(
              child: Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: Spacing.xl,
                  ),
                  child: Assets.images.longArrow.svg(
                    colorFilter: ColorFilter.mode(
                      ColorName.title,
                      BlendMode.srcIn,
                    ),
                  ),
                ),
              ),
            ),
            _freeLessonButton(context),
          ],
        )
      ],
    );
  }

  Widget _freeLessonButton(BuildContext context) {
    return Center(
      child: InkWell(
        hoverColor: Colors.transparent,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: () => context.read<AppBloc>().add(AppEvent.openTelegram()),
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
                LocaleKeys.freeTrialLesson.tr(),
                style: TextTheme.of(context).bodyMedium?.copyWith(
                      color: ColorName.card,
                      fontWeight: FontWeight.bold,
                    ),
              ).tr(),
            ),
          ),
        ),
      ),
    );
  }

  Widget _whatIsWaitingForYouSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          LocaleKeys.course_details_whatIsWaitingForYou.tr(),
          style: TextTheme.of(context).displayMedium?.copyWith(
                color: ColorName.title,
                fontWeight: FontWeight.w600,
              ),
        ),
        AppSpacing.v_64,
        ListView.separated(
          shrinkWrap: true,
          itemCount: _courseDetailsModel.modulesList.length,
          itemBuilder: (context, index) => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${LocaleKeys.course_details_module.tr()} ${index + 1}',
                style: TextTheme.of(context).headlineMedium?.copyWith(
                      color: ColorName.title,
                      fontWeight: FontWeight.w600,
                    ),
              ),
              AppSpacing.v_24,
              Card(
                color: ColorName.card,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(Spacing.xl),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 3,
                        child: Text(
                          _courseDetailsModel.modulesList[index].title.tr(),
                          style: TextTheme.of(context).headlineMedium?.copyWith(
                                color: ColorName.title,
                                fontWeight: FontWeight.w600,
                              ),
                        ),
                      ),
                      AppSpacing.v_24,
                      Expanded(
                        flex: 4,
                        child: Text(
                          _courseDetailsModel.modulesList[index].details.tr(),
                          style: TextTheme.of(context).headlineSmall?.copyWith(
                                color: ColorName.descriptionText,
                                fontWeight: FontWeight.normal,
                              ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          separatorBuilder: (context, index) => AppSpacing.v_48,
        ),
      ],
    );
  }

  Widget _aboutCourseSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          LocaleKeys.course_details_aboutCourse.tr(),
          style: TextTheme.of(context).displayMedium?.copyWith(
                color: ColorName.title,
                fontWeight: FontWeight.w600,
              ),
        ),
        AppSpacing.v_64,
        ListView.separated(
          shrinkWrap: true,
          itemCount: _courseDetailsModel.aboutCourseList.length,
          itemBuilder: (context, index) => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                _courseDetailsModel.aboutCourseList[index].title.tr(),
                style: TextTheme.of(context).headlineMedium?.copyWith(
                      color: ColorName.title,
                      fontWeight: FontWeight.w600,
                    ),
              ),
              AppSpacing.v_24,
              Text(
                _courseDetailsModel.aboutCourseList[index].details.tr(),
                style: TextTheme.of(context).headlineSmall?.copyWith(
                      color: ColorName.descriptionText,
                      fontWeight: FontWeight.normal,
                    ),
              )
            ],
          ),
          separatorBuilder: (context, index) => AppSpacing.v_48,
        ),
      ],
    );
  }

  Widget _header(BuildContext context) => Padding(
      padding: const EdgeInsets.only(
        top: 72,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Text.rich(
              TextSpan(
                text: '${LocaleKeys.main.tr()} / ',
                style: TextTheme.of(context).headlineSmall?.copyWith(
                      color: ColorName.title,
                      fontWeight: FontWeight.w600,
                    ),
                children: [
                  TextSpan(
                    text: _courseDetailsModel.fullTitle.tr(),
                    style: TextTheme.of(context).headlineSmall?.copyWith(
                          color: ColorName.descriptionText,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: Spacing.s56,
            ),
            child: Text(
              _courseDetailsModel.title1.tr(),
              style: TextTheme.of(context).displayLarge,
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.only(
                top: Spacing.xs,
                left: Spacing.s56,
              ),
              child: Text(
                _courseDetailsModel.title2.tr(),
                style: TextTheme.of(context).displayLarge?.copyWith(
                      color: ColorName.accent,
                    ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(
                top: Spacing.xs,
              ),
              child: Text(
                _courseDetailsModel.subTitle.tr(),
                style: TextTheme.of(context).displayLarge?.copyWith(
                      fontSize: 72,
                    ),
              ),
            ),
          ),
        ],
      ));

  Widget _cards(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: _courseDetailsModel.cardsTitles.asMap().entries.map(
        (entry) {
          final index = entry.key;
          final textKey = entry.value;
          return Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                left: index == 0 ? 0 : Spacing.xl,
              ),
              child: Card(
                color: ColorName.card,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(Spacing.lg),
                  child: Text(
                    textKey.tr(),
                    style: TextTheme.of(context).bodyMedium?.copyWith(
                          color: ColorName.descriptionText,
                        ),
                  ),
                ),
              ),
            ),
          );
        },
      ).toList(),
    );
  }

  Widget _infoTable(
    BuildContext context,
  ) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              LocaleKeys.course_details_coursePrice.tr(),
              style: TextTheme.of(context).bodyMedium?.copyWith(
                    color: ColorName.title,
                  ),
            ),
            AppSpacing.v_8,
            Text(
              '${_courseDetailsModel.pricePrefix.tr().isEmpty ? '' : '${_courseDetailsModel.pricePrefix.tr()} '}${_courseDetailsModel.price.tr()} ${_courseDetailsModel.pricePostfix.tr()}',
              style: TextTheme.of(context).headlineSmall?.copyWith(
                    color: ColorName.accent,
                    fontWeight: FontWeight.w600,
                  ),
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              LocaleKeys.course_details_begining.tr(),
              style: TextTheme.of(context).bodyMedium?.copyWith(
                    color: ColorName.title,
                  ),
            ),
            AppSpacing.v_8,
            Text(
              _courseDetailsModel.startDate.tr(),
              style: TextTheme.of(context).headlineSmall?.copyWith(
                    color: ColorName.accent,
                    fontWeight: FontWeight.w600,
                  ),
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              LocaleKeys.course_details_format.tr(),
              style: TextTheme.of(context).bodyMedium?.copyWith(
                    color: ColorName.title,
                  ),
            ),
            AppSpacing.v_8,
            Text(
              _courseDetailsModel.courseFormat.tr(),
              style: TextTheme.of(context).headlineSmall?.copyWith(
                    color: ColorName.accent,
                    fontWeight: FontWeight.w600,
                  ),
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              LocaleKeys.course_details_duration.tr(),
              style: TextTheme.of(context).bodyMedium?.copyWith(
                    color: ColorName.title,
                  ),
            ),
            AppSpacing.v_8,
            Text(
              _courseDetailsModel.duration.tr(),
              style: TextTheme.of(context).headlineSmall?.copyWith(
                    color: ColorName.accent,
                    fontWeight: FontWeight.w600,
                  ),
            ),
          ],
        ),
      ],
    );
  }
}

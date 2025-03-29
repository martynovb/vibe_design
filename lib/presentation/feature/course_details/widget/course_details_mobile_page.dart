part of '../course_details.dart';

class CourseDetailsMobilePage extends StatelessWidget {
  CourseDetailsMobilePage({
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
                      Column(
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              constraints: BoxConstraints(
                                maxWidth: AppDimensions.minDesktopWidth,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: Spacing.md,
                                ),
                                child: _header(context),
                              ),
                            ),
                          ),
                          AppSpacing.v_24,
                          IntrinsicHeight(
                            child: _cards(context),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      AppSpacing.v_32,
                      Divider(
                        height: 5,
                        color: ColorName.title,
                      ),
                      AppSpacing.v_24,
                      _infoTable(context),
                      SizedBox(height: 120),
                      _aboutCourseSection(context),
                      SizedBox(height: 120),
                      _whatIsWaitingForYouSection(context),
                      SizedBox(height: 120),
                      _coursePriceSection(context),
                      SizedBox(height: 120),
                      ChooseYourPathPage(),
                      SizedBox(height: 120),
                      ApplyForCoursePage(),
                      SizedBox(height: 120),
                    ],
                  ),
                  FooterPage(),
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
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: Spacing.md,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            LocaleKeys.course_details_coursePrice.tr(),
            style: TextTheme.of(context).displaySmall?.copyWith(
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
                    fontSize: AppTextSizes.mobileSubTitleSize,
                  ),
            ),
          ),
          AppSpacing.v_24,
          Text.rich(
            TextSpan(
              text: '${LocaleKeys.course_details_price.tr()} ',
              style: TextTheme.of(context).headlineSmall?.copyWith(
                    color: ColorName.accent,
                    fontSize: 24,
                    fontWeight: FontWeight.normal,
                  ),
              children: [
                if (_courseDetailsModel.pricePrefix.tr().isNotEmpty)
                  TextSpan(
                    text: '${_courseDetailsModel.pricePrefix.tr()} ',
                    style: TextTheme.of(context).headlineSmall?.copyWith(
                          color: ColorName.accent,
                          fontSize: 24,
                          fontWeight: FontWeight.normal,
                        ),
                  ),
                TextSpan(
                  text: '${_courseDetailsModel.price.tr()} ',
                  style: TextTheme.of(context).headlineSmall?.copyWith(
                        color: ColorName.accent,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                TextSpan(
                  text: '${_courseDetailsModel.pricePostfix.tr()} ',
                  style: TextTheme.of(context).headlineSmall?.copyWith(
                        color: ColorName.accent,
                        fontSize: 24,
                        fontWeight: FontWeight.normal,
                      ),
                ),
              ],
            ),
          ),
          AppSpacing.v_24,
          Text(
            LocaleKeys.course_details_whatYouGet.tr(),
            style: TextTheme.of(context).headlineSmall?.copyWith(
                  color: ColorName.title,
                  fontWeight: FontWeight.w600,
                  fontSize: 24,
                ),
          ),
          AppSpacing.v_16,
          ListView.separated(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: _courseDetailsModel.benefitsList.length,
            itemBuilder: (context, index) => Text.rich(
              TextSpan(
                text: _courseDetailsModel.benefitsList[index].title.tr(),
                style: TextTheme.of(context).headlineSmall?.copyWith(
                      color: ColorName.title,
                      fontWeight: FontWeight.w600,
                      fontSize: AppTextSizes.mobileSubTitleSize,
                    ),
                children: [
                  TextSpan(
                    text: _courseDetailsModel.benefitsList[index].details.tr(),
                    style: TextTheme.of(context).headlineSmall?.copyWith(
                          color: ColorName.descriptionText,
                          fontWeight: FontWeight.normal,
                          fontSize: AppTextSizes.mobileSubTitleSize,
                        ),
                  ),
                ],
              ),
            ),
            separatorBuilder: (context, index) => AppSpacing.v_12,
          ),
          AppSpacing.v_32,
          _freeLessonButton(context),
        ],
      ),
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
                      fontSize: AppTextSizes.mobileSubTitleSize,
                    ),
              ).tr(),
            ),
          ),
        ),
      ),
    );
  }

  Widget _whatIsWaitingForYouSection(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: Spacing.md,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            LocaleKeys.course_details_whatIsWaitingForYou.tr(),
            style: TextTheme.of(context).displaySmall?.copyWith(
                  color: ColorName.title,
                  fontWeight: FontWeight.w600,
                ),
          ),
          AppSpacing.v_24,
          ListView.separated(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: _courseDetailsModel.modulesList.length,
            itemBuilder: (context, index) => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${LocaleKeys.course_details_module.tr()} ${index + 1}',
                  style: TextTheme.of(context).headlineSmall?.copyWith(
                        color: ColorName.title,
                        fontWeight: FontWeight.w600,
                      ),
                ),
                AppSpacing.v_16,
                Card(
                  color: ColorName.card,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(Spacing.xl),
                    child: Column(
                      children: [
                        Text(
                          _courseDetailsModel.modulesList[index].title.tr(),
                          style: TextTheme.of(context).headlineSmall?.copyWith(
                                color: ColorName.title,
                                fontWeight: FontWeight.w600,
                              ),
                        ),
                        AppSpacing.v_16,
                        Text(
                          _courseDetailsModel.modulesList[index].details.tr(),
                          style: TextTheme.of(context).headlineSmall?.copyWith(
                                color: ColorName.descriptionText,
                                fontWeight: FontWeight.normal,
                                fontSize: AppTextSizes.mobileSubTitleSize,
                              ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            separatorBuilder: (context, index) => AppSpacing.v_24,
          ),
        ],
      ),
    );
  }

  Widget _aboutCourseSection(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: Spacing.md,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            LocaleKeys.course_details_aboutCourse.tr(),
            style: TextTheme.of(context).displaySmall?.copyWith(
                  color: ColorName.title,
                  fontWeight: FontWeight.w600,
                ),
          ),
          AppSpacing.v_24,
          ListView.separated(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: _courseDetailsModel.aboutCourseList.length,
            itemBuilder: (context, index) => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  _courseDetailsModel.aboutCourseList[index].title.tr(),
                  style: TextTheme.of(context).headlineMedium?.copyWith(
                        color: ColorName.title,
                        fontWeight: FontWeight.w600,
                        fontSize: AppTextSizes.mobileSubTitleSize,
                      ),
                ),
                AppSpacing.v_16,
                Text(
                  _courseDetailsModel.aboutCourseList[index].details.tr(),
                  style: TextTheme.of(context).headlineSmall?.copyWith(
                        color: ColorName.descriptionText,
                        fontWeight: FontWeight.normal,
                        fontSize: AppTextSizes.mobileSubTitleSize,
                      ),
                )
              ],
            ),
            separatorBuilder: (context, index) => AppSpacing.v_48,
          ),
        ],
      ),
    );
  }

  Widget _header(BuildContext context) => Padding(
      padding: const EdgeInsets.only(
        top: 24,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Row(
              children: [
                InkWell(
                  hoverColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () => handlePop(context, MenuOption.home),
                  child: Text(
                    '${LocaleKeys.main.tr()} / ',
                    style: TextTheme.of(context).headlineSmall?.copyWith(
                          color: ColorName.title,
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                        ),
                  ),
                ),
                Text(
                  _courseDetailsModel.fullTitle.tr(),
                  style: TextTheme.of(context).headlineSmall?.copyWith(
                        color: ColorName.stroke,
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                      ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: Spacing.xxxl,
            ),
            child: Text(
              _courseDetailsModel.title1.tr(),
              style: TextTheme.of(context).displaySmall,
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.only(
                top: Spacing.xs,
              ),
              child: Text(
                _courseDetailsModel.title2.tr(),
                textAlign: TextAlign.right,
                style: TextTheme.of(context).displaySmall?.copyWith(
                      color: ColorName.accent,
                    ),
              ),
            ),
          ),
          AppSpacing.v_24,
          SizedBox(
            width: double.infinity,
            child: ElevatedButtonType1(
              text: LocaleKeys.freeTrialLesson.tr(),
              onPressed: () =>
                  context.read<AppBloc>().add(AppEvent.freeLesson()),
            ),
          ),
        ],
      ));

  Widget _cards(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: _courseDetailsModel.cardsTitles.asMap().entries.map(
          (entry) {
            final index = entry.key;
            final textKey = entry.value;
            return SizedBox(
              width: 300,
              child: Padding(
                padding: EdgeInsets.only(
                  left: Spacing.md,
                  right: index == _courseDetailsModel.cardsTitles.length - 1
                      ? Spacing.md
                      : 0,
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
                            fontSize: AppTextSizes.mobileSubTitleSize,
                          ),
                    ),
                  ),
                ),
              ),
            );
          },
        ).toList(),
      ),
    );
  }

  Widget _infoTable(
    BuildContext context,
  ) {
    final textSize = 10.0;
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: Spacing.md,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                LocaleKeys.course_details_coursePrice.tr(),
                style: TextTheme.of(context).labelSmall?.copyWith(
                      color: ColorName.title,
                      fontSize: textSize,
                    ),
              ),
              AppSpacing.v_8,
              Text(
                '${_courseDetailsModel.pricePrefix.tr().isEmpty ? '' : '${_courseDetailsModel.pricePrefix.tr()} '}${_courseDetailsModel.price.tr()} ${_courseDetailsModel.pricePostfix.tr()}',
                style: TextTheme.of(context).labelSmall?.copyWith(
                      color: ColorName.accent,
                      fontWeight: FontWeight.w600,
                      fontSize: textSize,
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
                style: TextTheme.of(context).labelSmall?.copyWith(
                      color: ColorName.title,
                      fontSize: textSize,
                    ),
              ),
              AppSpacing.v_8,
              Text(
                _courseDetailsModel.startDate.tr(),
                style: TextTheme.of(context).labelSmall?.copyWith(
                      color: ColorName.accent,
                      fontWeight: FontWeight.w600,
                      fontSize: textSize,
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
                style: TextTheme.of(context).labelSmall?.copyWith(
                      color: ColorName.title,
                      fontSize: textSize,
                    ),
              ),
              AppSpacing.v_8,
              Text(
                _courseDetailsModel.courseFormat.tr(),
                style: TextTheme.of(context).labelSmall?.copyWith(
                      color: ColorName.accent,
                      fontWeight: FontWeight.w600,
                      fontSize: textSize,
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
                style: TextTheme.of(context).labelSmall?.copyWith(
                      color: ColorName.title,
                      fontSize: textSize,
                    ),
              ),
              AppSpacing.v_8,
              Text(
                _courseDetailsModel.duration.tr(),
                style: TextTheme.of(context).labelSmall?.copyWith(
                      color: ColorName.accent,
                      fontWeight: FontWeight.w600,
                      fontSize: textSize,
                    ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

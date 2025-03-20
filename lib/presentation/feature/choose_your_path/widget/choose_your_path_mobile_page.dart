part of '../choose_your_path_level.dart';

class ChooseYourPathMobilePage extends StatefulWidget {
  const ChooseYourPathMobilePage({super.key});

  @override
  State<StatefulWidget> createState() => ChooseYourPathMobileState();
}

class ChooseYourPathMobileState extends State<ChooseYourPathMobilePage> {
  static const _maxDots = 4;
  var _currentCardIndex = 0;
  final _scrollController = ScrollController();
  final _indicatorController = PageController();
  late VoidCallback _onScrollListener;

  @override
  void didChangeDependencies() {
    _onScrollListener = () {
      final index = _scrollController.position.pixels /
          _scrollController.position.viewportDimension;
      if (index >= 0) {
        _currentCardIndex = index.round();
      }
      _indicatorController.animateToPage(
        _currentCardIndex,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    };
    _scrollController.addListener(_onScrollListener);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: Spacing.md),
          child: _title(context),
        ),
        AppSpacing.v_16,
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: Spacing.md),
          child: _description(context),
        ),
        AppSpacing.v_24,
        _viewPager(context),
      ],
    );
  }

  Widget _title(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: LocaleKeys.chooseYourPathSection_Title11.tr(),
        style: TextTheme.of(context).displaySmall?.copyWith(
              color: ColorName.title,
              fontWeight: FontWeight.w600,
            ),
        children: [
          TextSpan(
            text: LocaleKeys.chooseYourPathSection_Title12.tr(),
            style: TextTheme.of(context).displaySmall?.copyWith(
                  color: ColorName.title,
                  fontWeight: FontWeight.w800,
                ),
          ),
          TextSpan(
            text: LocaleKeys.chooseYourPathSection_Title13.tr(),
            style: TextTheme.of(context).displaySmall?.copyWith(
                  color: ColorName.title,
                  fontWeight: FontWeight.w600,
                ),
          ),
          TextSpan(
            text: '\n${LocaleKeys.chooseYourPathSection_Title21.tr()}',
            style: TextTheme.of(context).displaySmall?.copyWith(
                  color: ColorName.title,
                  fontWeight: FontWeight.w600,
                ),
          ),
          TextSpan(
            text: LocaleKeys.chooseYourPathSection_Title22.tr(),
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
    return Text(
      LocaleKeys.chooseYourPathSection_Subtitle.tr(),
      style: TextTheme.of(context).bodyMedium?.copyWith(
            color: ColorName.title,
            fontWeight: FontWeight.normal,
            fontSize: 16,
          ),
    );
  }

  Widget _viewPager(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 1,
          height: 1,
          child: PageView.builder(
            controller: _indicatorController,
            itemBuilder: (context, index) => SizedBox.shrink(),
          ),
        ),
        SizedBox(
          height: 840,
          child: IntrinsicHeight(
            child: ListView.separated(
              cacheExtent: 2000,
              controller: _scrollController,
              scrollDirection: Axis.horizontal,
              itemCount: CourseType.values.length,
              separatorBuilder: (context, index) => AppSpacing.h_32,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(
                    right: index >= (CourseType.values.length - 1)
                        ? Spacing.md
                        : 0,
                  ),
                  child: ChooseYourPathCard(
                    isMobile: true,
                    maxWidth: 320,
                    sideTitleTextSize: 24,
                    titleTextSize: 40,
                    tagTextSize: 16,
                    descriptionTextSize: 16,
                    chooseYourPathModel:
                        CourseType.values[index].getChooseYourPathModel(),
                    onDetailsPressed: () async {
                      final result = await context.push(
                        RouteConstants.details(
                          params: {
                            'courseType': CourseType.values[index].name,
                          },
                        ).path,
                      );
                      if (result != null && result is MenuOption && mounted) {
                        HomeMenuProvider.of(context)
                            ?.onMenuOptionSelected(result);
                      }
                    },
                  ),
                );
              },
            ),
          ),
        ),
        AppSpacing.v_48,
        _bottomIndicator(context),
      ],
    );
  }

  Widget _bottomIndicator(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: () {
            if (_currentCardIndex > 0) {
              _currentCardIndex--;
              _scrollToPosition(_currentCardIndex);
            }
          },
          hoverColor: Colors.transparent,
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          child: Transform.rotate(
            angle: 3.14,
            child: Assets.images.arrowRight.svg(
              width: 24,
              height: 24,
            ),
          ),
        ),
        AppSpacing.h_16,
        SmoothPageIndicator(
          controller: _indicatorController,
          count: _maxDots,
          axisDirection: Axis.horizontal,
          effect: const ExpandingDotsEffect(
            dotHeight: 8,
            dotWidth: 8,
            activeDotColor: ColorName.accent,
            dotColor: ColorName.stroke,
            expansionFactor: 2,
          ),
        ),
        AppSpacing.h_16,
        InkWell(
          onTap: () {
            if (_currentCardIndex < _maxDots - 1) {
              _currentCardIndex++;
            } else {
              _currentCardIndex = 0;
            }
            _scrollToPosition(_currentCardIndex);
          },
          hoverColor: Colors.transparent,
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          child: Assets.images.arrowRight.svg(
            width: 24,
            height: 24,
          ),
        ),
      ],
    );
  }

  void _scrollToPosition(int index) {
    _scrollController.removeListener(_onScrollListener);
    final contentSize = _scrollController.position.viewportDimension +
        _scrollController.position.maxScrollExtent;
    final target = contentSize * index / CourseType.values.length;
    _scrollController.position.animateTo(
      target,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );

    _indicatorController.animateToPage(
      index,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
    _scrollController.addListener(_onScrollListener);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _indicatorController.dispose();
    super.dispose();
  }
}

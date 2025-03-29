// ignore_for_file: use_build_context_synchronously

part of '../choose_your_path_level.dart';

class ChooseYourPathDesktopPage extends StatefulWidget {
  const ChooseYourPathDesktopPage({super.key});

  @override
  State<StatefulWidget> createState() => ChooseYourPathDesktopState();
}

class ChooseYourPathDesktopState extends State<ChooseYourPathDesktopPage> {
  static const _maxDots = 3;
  var _currentCardIndex = 0;
  final _scrollController = ScrollController();
  final _indicatorController = PageController();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: AppDimensions.minDesktopWidth,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text.rich(
              TextSpan(
                text: LocaleKeys.chooseYourPathSection_Title11.tr(),
                style: TextTheme.of(context).displayMedium?.copyWith(
                      color: ColorName.title,
                      fontWeight: FontWeight.w600,
                    ),
                children: [
                  TextSpan(
                    text: LocaleKeys.chooseYourPathSection_Title12.tr(),
                    style: TextTheme.of(context).displayMedium?.copyWith(
                          color: ColorName.title,
                          fontWeight: FontWeight.w800,
                        ),
                  ),
                  TextSpan(
                    text: LocaleKeys.chooseYourPathSection_Title13.tr(),
                    style: TextTheme.of(context).displayMedium?.copyWith(
                          color: ColorName.title,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                const Spacer(),
                Text.rich(
                  TextSpan(
                    text: LocaleKeys.chooseYourPathSection_Title21.tr(),
                    style: TextTheme.of(context).displayMedium?.copyWith(
                          color: ColorName.title,
                          fontWeight: FontWeight.w600,
                        ),
                    children: [
                      TextSpan(
                        text: LocaleKeys.chooseYourPathSection_Title22.tr(),
                        style: TextTheme.of(context).displayMedium?.copyWith(
                              color: ColorName.title,
                              fontWeight: FontWeight.w800,
                            ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            AppSpacing.v_16,
            Text(
              LocaleKeys.chooseYourPathSection_Subtitle.tr(),
              style: TextTheme.of(context).headlineSmall?.copyWith(
                    color: ColorName.title,
                    fontWeight: FontWeight.normal,
                  ),
            ),
            AppSpacing.v_48,
            _viewPager(context),
          ],
        ),
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
            itemBuilder: (context, index) => const SizedBox.shrink(),
          ),
        ),
        SizedBox(
          height: 700,
          child: IntrinsicHeight(
            child: ListView.separated(
              cacheExtent: 2000,
              controller: _scrollController,
              scrollDirection: Axis.horizontal,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: CourseType.values.length,
              separatorBuilder: (context, index) => AppSpacing.h_32,
              itemBuilder: (context, index) {
                return ChooseYourPathCard(
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
              width: 60,
              height: 60,
            ),
          ),
        ),
        AppSpacing.h_100,
        SmoothPageIndicator(
          controller: _indicatorController,
          count: _maxDots,
          axisDirection: Axis.horizontal,
          effect: const ExpandingDotsEffect(
            dotHeight: 16,
            dotWidth: 16,
            activeDotColor: ColorName.accent,
            dotColor: ColorName.stroke,
            expansionFactor: 2,
          ),
        ),
        AppSpacing.h_100,
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
            width: 60,
            height: 60,
          ),
        ),
      ],
    );
  }

  void _scrollToPosition(int index) {
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
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _indicatorController.dispose();
    super.dispose();
  }
}

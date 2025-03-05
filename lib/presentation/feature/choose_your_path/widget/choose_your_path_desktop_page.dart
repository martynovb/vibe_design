part of '../choose_your_path_level.dart';

class ChooseYourPathDesktopPage extends StatefulWidget {
  const ChooseYourPathDesktopPage({super.key});

  @override
  State<StatefulWidget> createState() => ChooseYourPathDesktopState();
}

class ChooseYourPathDesktopState extends State<ChooseYourPathDesktopPage> {
  var _currentCardIndex = 0;
  final _scrollController = ScrollController();
  final _indicatorController = PageController();

  final List<Widget> _pages = [
    ChooseYourPathCard(
      cardName: LocaleKeys.chooseYourPathSection_Card1Name,
      price: LocaleKeys.chooseYourPathSection_Card1Price,
      tag1: LocaleKeys.chooseYourPathSection_Card1Tag1,
      tag2: LocaleKeys.chooseYourPathSection_Card1Tag2,
      tag3: LocaleKeys.chooseYourPathSection_Card1Tag3,
      description1: LocaleKeys.chooseYourPathSection_Card1Description1,
      description2: LocaleKeys.chooseYourPathSection_Card1Description2,
      description3: LocaleKeys.chooseYourPathSection_Card1Description3,
      description4: LocaleKeys.chooseYourPathSection_Card1Description4,
      description5: LocaleKeys.chooseYourPathSection_Card1Description5,
      onDetailsPressed: () {},
    ),
    ChooseYourPathCard(
      cardName: LocaleKeys.chooseYourPathSection_Card2Name,
      price: LocaleKeys.chooseYourPathSection_Card2Price,
      tag1: LocaleKeys.chooseYourPathSection_Card2Tag1,
      tag2: LocaleKeys.chooseYourPathSection_Card2Tag2,
      tag3: LocaleKeys.chooseYourPathSection_Card2Tag3,
      description1: LocaleKeys.chooseYourPathSection_Card2Description1,
      description2: LocaleKeys.chooseYourPathSection_Card2Description2,
      description3: LocaleKeys.chooseYourPathSection_Card2Description3,
      description4: LocaleKeys.chooseYourPathSection_Card2Description4,
      description5: LocaleKeys.chooseYourPathSection_Card2Description5,
      onDetailsPressed: () {},
    ),
    ChooseYourPathCard(
      cardName: LocaleKeys.chooseYourPathSection_Card3Name,
      price: LocaleKeys.chooseYourPathSection_Card3Price,
      tag1: LocaleKeys.chooseYourPathSection_Card3Tag1,
      tag2: LocaleKeys.chooseYourPathSection_Card3Tag2,
      tag3: LocaleKeys.chooseYourPathSection_Card3Tag3,
      description1: LocaleKeys.chooseYourPathSection_Card3Description1,
      description2: LocaleKeys.chooseYourPathSection_Card3Description2,
      description3: LocaleKeys.chooseYourPathSection_Card3Description3,
      description4: LocaleKeys.chooseYourPathSection_Card3Description4,
      description5: LocaleKeys.chooseYourPathSection_Card3Description5,
      onDetailsPressed: () {},
    ),
    ChooseYourPathCard(
      cardName: LocaleKeys.chooseYourPathSection_Card4Name,
      price: LocaleKeys.chooseYourPathSection_Card4Price,
      tag1: LocaleKeys.chooseYourPathSection_Card4Tag1,
      tag2: LocaleKeys.chooseYourPathSection_Card4Tag2,
      tag3: LocaleKeys.chooseYourPathSection_Card4Tag3,
      description1: LocaleKeys.chooseYourPathSection_Card4Description1,
      description2: LocaleKeys.chooseYourPathSection_Card4Description2,
      description3: LocaleKeys.chooseYourPathSection_Card4Description3,
      description4: LocaleKeys.chooseYourPathSection_Card4Description4,
      description5: LocaleKeys.chooseYourPathSection_Card4Description5,
      onDetailsPressed: () {},
    ),
  ];

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

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
                Spacer(),
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
            itemBuilder: (context, index) => SizedBox.shrink(),
          ),
        ),
        SizedBox(
          height: 700,
          child: IntrinsicHeight(
            child: ListView.separated(
              controller: _scrollController,
              scrollDirection: Axis.horizontal,
              itemCount: _pages.length,
              separatorBuilder: (context, index) => AppSpacing.h_32,
              itemBuilder: (context, index) {
                return _pages[index];
              },
            ),
          ),
        ),
        AppSpacing.v_32,
        Row(
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
              count: _pages.length,
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
                if (_currentCardIndex < _pages.length - 1) {
                  _currentCardIndex++;
                  _scrollToPosition(_currentCardIndex);
                }
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
        ),
      ],
    );
  }

  void _scrollToPosition(int index) {
    final contentSize = _scrollController.position.viewportDimension +
        _scrollController.position.maxScrollExtent;
    final target = contentSize * index / _pages.length;
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

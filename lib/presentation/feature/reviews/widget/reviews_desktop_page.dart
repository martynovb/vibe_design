part of '../reviews.dart';

class ReviewsDesktopPage extends StatefulWidget {
  const ReviewsDesktopPage({super.key});

  @override
  State<StatefulWidget> createState() => ReviewsDesktopState();
}

class ReviewsDesktopState extends State<ReviewsDesktopPage> {
  final _controller = PageController(
    viewportFraction: 0.35,
    keepPage: true,
    initialPage: 1,
  );
  final List<Widget> _pages = [
    Assets.images.review1.image(
      width: 410,
      height: 840,
    ),
    Assets.images.review2.image(
      width: 410,
      height: 840,
    ),
    Assets.images.review3.image(
      width: 410,
      height: 840,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: AppDimensions.minDesktopWidth,
          child: _header(context),
        ),
        AppSpacing.v_100,
        _viewPager(context),
      ],
    );
  }

  Widget _header(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Text.rich(
                TextSpan(
                  text: LocaleKeys.reviewsTitle1.tr(),
                  style: TextTheme.of(context).displayMedium?.copyWith(
                        color: ColorName.title,
                        fontWeight: FontWeight.w800,
                        fontSize: 52,
                      ),
                  children: [
                    TextSpan(
                      text: LocaleKeys.reviewsTitle2.tr(),
                      style: TextTheme.of(context).displayMedium?.copyWith(
                            color: ColorName.title,
                            fontWeight: FontWeight.w600,
                            fontSize: 52,
                          ),
                    ),
                    TextSpan(
                      text: LocaleKeys.reviewsTitle3.tr(),
                      style: TextTheme.of(context).displayMedium?.copyWith(
                            color: ColorName.title,
                            fontWeight: FontWeight.w800,
                            fontSize: 52,
                          ),
                    ),
                    TextSpan(
                      text: LocaleKeys.reviewsTitle4.tr(),
                      style: TextTheme.of(context).displayMedium?.copyWith(
                            color: ColorName.title,
                            fontWeight: FontWeight.w600,
                            fontSize: 52,
                          ),
                    )
                  ],
                ),
              ),
            ),
            AppSpacing.v_64,
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: _card(
                    context: context,
                    title: LocaleKeys.reviewCardTitle1.tr(),
                    description: LocaleKeys.reviewCardDescription1.tr(),
                    isTitleTop: true,
                  ),
                ),
                AppSpacing.h_24,
                Expanded(
                  child: _card(
                    context: context,
                    title: LocaleKeys.reviewCardTitle2.tr(),
                    description: LocaleKeys.reviewCardDescription2.tr(),
                    isTitleTop: false,
                  ),
                ),
                AppSpacing.h_24,
                Expanded(
                  child: _card(
                    context: context,
                    title: LocaleKeys.reviewCardTitle3.tr(),
                    description: LocaleKeys.reviewCardDescription3.tr(),
                    isTitleTop: true,
                  ),
                ),
              ],
            )
          ],
        ),
        Positioned(
          left: 24,
          top: 16,
          child: Assets.images.quoteSymbol.image(
            width: 150,
            height: 150,
          ),
        ),
      ],
    );
  }

  Widget _card({
    required BuildContext context,
    required String title,
    required String description,
    bool isTitleTop = false,
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
            if (isTitleTop) ...[
              Text(
                title,
                style: TextTheme.of(context).headlineMedium?.copyWith(
                      color: ColorName.title,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              AppSpacing.v_24,
              Text(
                description,
                style: TextTheme.of(context).bodyMedium?.copyWith(
                      color: ColorName.descriptionText,
                      fontWeight: FontWeight.normal,
                    ),
              ),
            ] else ...[
              Text(
                description,
                style: TextTheme.of(context).bodyMedium?.copyWith(
                      color: ColorName.descriptionText,
                      fontWeight: FontWeight.normal,
                    ),
              ),
              AppSpacing.v_24,
              Text(
                title,
                style: TextTheme.of(context).headlineMedium?.copyWith(
                      color: ColorName.title,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ],
          ],
        ),
      ),
    );
  }

  Widget _viewPager(BuildContext context) {
    return Column(
      children: [
        Container(
          constraints: BoxConstraints(
            maxWidth: AppDimensions.minDesktopWidth,
            minWidth: AppDimensions.minDesktopWidth,
          ),
          height: 1000,
          child: Transform.scale(
            scale: 1.15,
            child: PageView.builder(
              controller: _controller,
              itemBuilder: (_, index) {
                return AnimatedBuilder(
                  animation: _controller,
                  builder: (context, child) {
                    double delta;
                    if (_controller.position.haveDimensions) {
                      delta = _controller.page! - index;
                    } else {
                      delta = _controller.initialPage.toDouble() - index;
                    }

                    double scale = (1 - (delta.abs() * 0.3)).clamp(0.0, 1.0);

                    return Transform.scale(
                      scale: scale,
                      child: child,
                    );
                  },
                  child: _pages[index % _pages.length],
                );
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
                _controller.previousPage(
                  duration: Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                );
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
              controller: _controller,
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
                _controller.nextPage(
                  duration: Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                );
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
}

part of '../reviews.dart';

class ReviewsMobilePage extends StatelessWidget {
  ReviewsMobilePage({super.key});

  final _controller = PageController(
    viewportFraction: 0.42,
    keepPage: true,
    initialPage: 1,
  );
  final List<Widget> _pages = [
    Assets.images.review1.image(),
    Assets.images.review2.image(),
    Assets.images.review3.image(),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: Spacing.md),
          child: _header(context),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: Spacing.sm),
          child: _cards(context),
        ),
        _viewPager(context),
      ],
    );
  }

  Widget _header(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: LocaleKeys.reviewsTitle1.tr(),
        style: TextTheme.of(context).displaySmall?.copyWith(
              color: ColorName.title,
              fontWeight: FontWeight.w800,
            ),
        children: [
          TextSpan(
            text: LocaleKeys.reviewsTitle2.tr(),
            style: TextTheme.of(context).displaySmall?.copyWith(
                  color: ColorName.title,
                  fontWeight: FontWeight.w600,
                ),
          ),
          TextSpan(
            text: LocaleKeys.reviewsTitle3.tr(),
            style: TextTheme.of(context).displaySmall?.copyWith(
                  color: ColorName.title,
                  fontWeight: FontWeight.w800,
                ),
          ),
          TextSpan(
            text: LocaleKeys.reviewsTitle4.tr(),
            style: TextTheme.of(context).displaySmall?.copyWith(
                  color: ColorName.title,
                  fontWeight: FontWeight.w600,
                ),
          )
        ],
      ),
    );
  }

  Widget _cards(BuildContext context) => Stack(
        children: [
          Column(
            children: [
              AppSpacing.v_24,
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(top: Spacing.md),
                      child: _card(
                        context: context,
                        title: LocaleKeys.reviewCardTitle1.tr(),
                        description: LocaleKeys.reviewCardDescription1.tr(),
                        isTitleTop: true,
                      ),
                    ),
                  ),
                  AppSpacing.h_8,
                  Expanded(
                    child: _card(
                      context: context,
                      title: LocaleKeys.reviewCardTitle3.tr(),
                      description: LocaleKeys.reviewCardDescription3.tr(),
                      isTitleTop: true,
                    ),
                  ),
                ],
              ),
              AppSpacing.v_8,
              _card(
                context: context,
                title: LocaleKeys.reviewCardTitle2.tr(),
                description: LocaleKeys.reviewCardDescription2.tr(),
                isTitleTop: false,
              ),
            ],
          ),
          Positioned(
            top: Spacing.md,
            left: Spacing.lg,
            child: Assets.images.quoteSymbol.image(
              width: 50,
              height: 50,
            ),
          ),
        ],
      );

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
        padding: const EdgeInsets.all(Spacing.md),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (isTitleTop) ...[
              Text(
                title,
                style: TextTheme.of(context).headlineSmall?.copyWith(
                      color: ColorName.title,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              AppSpacing.v_24,
              Text(
                description,
                style: TextTheme.of(context).bodyMedium?.copyWith(
                      color: ColorName.descriptionText,
                      fontWeight: FontWeight.normal,fontSize: AppTextSizes.mobileSubTitleSize,
                    ),
              ),
            ] else ...[
              Text(
                description,
                style: TextTheme.of(context).bodyMedium?.copyWith(
                      color: ColorName.descriptionText,
                      fontWeight: FontWeight.normal,fontSize: AppTextSizes.mobileSubTitleSize,
                    ),
              ),
              AppSpacing.v_24,
              Text(
                title,
                style: TextTheme.of(context).headlineSmall?.copyWith(
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
    return LayoutBuilder(builder: (context, constaints) {
      final maxWidth = constaints.maxWidth;
      return Column(
        children: [
          AppSpacing.v_24,
          SizedBox(
            height: 500,
            child: Transform.scale(
              scale: 1 +
                  ((680 - maxWidth).clamp(0, 430) / (430 == 0 ? 1 : 430)) *
                      0.5,
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
          AppSpacing.v_24,
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
                    width: 24,
                    height: 24,
                  ),
                ),
              ),
              AppSpacing.h_16,
              SmoothPageIndicator(
                controller: _controller,
                count: _pages.length,
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
                  _controller.nextPage(
                    duration: Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
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
          ),
        ],
      );
    });
  }
}

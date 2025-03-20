part of '../home.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
    this.scrollTo,
  });

  final MenuOption? scrollTo;

  @override
  State<StatefulWidget> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  MenuOption _selectedMenuOption = MenuOption.home;
  final _scrollController = ScrollController();
  late List<SectionViewModel> _sections;
  final Map<GlobalKey, double> _sectionOffsets = {};
  final _columnKey = GlobalKey();
  late VoidCallback _onScrollListener;
  var _isScrolling = false;
  @override
  void didChangeDependencies() {
    final homeKey = GlobalKey();
    final aboutKey = GlobalKey();
    final coursesKey = GlobalKey();
    final prosKey = GlobalKey();
    final learnKey = GlobalKey();
    final pricingKey = GlobalKey();
    final contactKey = GlobalKey();

    _sections = [
      SectionViewModel(
        key: homeKey,
        menuOption: MenuOption.home,
        section: HeaderPage(
          key: homeKey,
        ),
      ),
      SectionViewModel(section: GoalPage()),
      SectionViewModel(
        key: aboutKey,
        menuOption: MenuOption.about,
        section: AboutMePage(
          key: aboutKey,
        ),
      ),
      SectionViewModel(section: MyApproachPage()),
      SectionViewModel(
        key: coursesKey,
        menuOption: MenuOption.courses,
        section: SelectLevelPage(
          key: coursesKey,
        ),
      ),
      SectionViewModel(
        key: prosKey,
        menuOption: MenuOption.pros,
        section: WhyMePage(
          key: prosKey,
        ),
      ),
      SectionViewModel(section: MyStudentsPage()),
      SectionViewModel(section: ReviewsPage()),
      SectionViewModel(
        key: learnKey,
        menuOption: MenuOption.learn,
        section: LearningProcessPage(
          key: learnKey,
        ),
      ),
      SectionViewModel(section: LearningDetailsPage()),
      SectionViewModel(
        key: pricingKey,
        menuOption: MenuOption.pricing,
        section: ChooseYourPathPage(
          key: pricingKey,
        ),
      ),
      SectionViewModel(section: ApplyForCoursePage()),
      SectionViewModel(
        key: contactKey,
        menuOption: MenuOption.contact,
        section: FooterPage(
          key: contactKey,
          onMenuOptionPressed: onMenuOptionSelected,
        ),
      ),
    ];

    _onScrollListener = _onScroll;

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _calculateSectionOffsets();
      if (widget.scrollTo != null) {
        onMenuOptionSelected(widget.scrollTo!);
      }
    });

    _scrollController.addListener(_onScrollListener);

    super.didChangeDependencies();
  }

  void _calculateSectionOffsets() {
    final columnContext = _columnKey.currentContext;
    if (columnContext == null) return;

    final columnBox = columnContext.findRenderObject() as RenderBox;

    for (var section in _sections) {
      final key = section.key;
      if (key == null) continue;

      final keyContext = key.currentContext;
      if (keyContext == null) continue;

      final sectionBox = keyContext.findRenderObject() as RenderBox;
      final offset =
          sectionBox.localToGlobal(Offset.zero, ancestor: columnBox).dy;
      _sectionOffsets[key] = offset;
    }
  }

  void _onScroll() {
    if (_scrollController.position.outOfRange) return;
    if (!_scrollController.position.isScrollingNotifier.value) return;

    final scrollOffset = _scrollController.offset;
    MenuOption? currentOption;
    final double bottomThreshold = 100;

    // 1. Find the currently visible section using scroll position
    for (var section in _sections) {
      if (section.key == null || !_sectionOffsets.containsKey(section.key)) {
        continue;
      }

      final sectionOffset = _sectionOffsets[section.key]!;
      if (scrollOffset >= sectionOffset) {
        currentOption = section.menuOption;
      }
    }

    // 2. Check if we're at the bottom of the scroll
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.position.pixels;
    final isAtBottom = currentScroll >= maxScroll - bottomThreshold;

    if (isAtBottom) {
      // 3. Find the last available menu option
      final lastMenuSection = _sections.last;
      currentOption = lastMenuSection.menuOption;
    }

    // 4. Update state only if needed
    if (currentOption != null && currentOption != _selectedMenuOption) {
      setState(() => _selectedMenuOption = currentOption!);
    }
  }

  @override
  void didUpdateWidget(HomePage oldWidget) {
    super.didUpdateWidget(oldWidget);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _calculateSectionOffsets();
    });
  }

  @override
  Widget build(BuildContext context) {
    return HomeMenuProvider(
      onMenuOptionSelected: onMenuOptionSelected,
      child: Scaffold(
        body: DeviceLayoutBuilder(layoutBuilder: (isMobile) {
          return Column(
            children: [
              Container(
                color: ColorName.card.withValues(alpha: 0.4),
                child: MenuWidget(
                  selectedMenuOption: _selectedMenuOption,
                  onMenuOptionSelected: onMenuOptionSelected,
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  controller: _scrollController,
                  child: Column(
                    key: _columnKey,
                    children: List.generate(
                      _sections.length,
                      (index) {
                        return index < (_sections.length - 1)
                            ? Column(
                                children: [
                                  _sections[index].section,
                                  if (index < _sections.length - 1)
                                    SizedBox(height: isMobile ? 120 : 200),
                                ],
                              )
                            : _sections[index].section;
                      },
                    ),
                  ),
                ),
              ),
            ],
          );
        }),
      ),
    );
  }

  Future<void> onMenuOptionSelected(
    MenuOption menuOptionSelected,
  ) async {
    if (_isScrolling) return;

    _isScrolling = true;
    setState(() {
      _selectedMenuOption = menuOptionSelected;
    });

    _scrollController.removeListener(_onScrollListener);

    await Scrollable.ensureVisible(
        _sections
                .firstWhereOrNull((vm) => vm.menuOption == menuOptionSelected)
                ?.key
                ?.currentContext ??
            context,
        duration: Duration(
          milliseconds: 500,
        ));
    _scrollController.addListener(_onScrollListener);
    _isScrolling = false;
  }
}

class HomeMenuProvider extends InheritedWidget {
  final Future<void> Function(MenuOption) onMenuOptionSelected;
  const HomeMenuProvider({
    super.key,
    required this.onMenuOptionSelected,
    required super.child,
  });

  static HomeMenuProvider? of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<HomeMenuProvider>();

  @override
  bool updateShouldNotify(covariant HomeMenuProvider oldWidget) =>
      onMenuOptionSelected != oldWidget.onMenuOptionSelected;
}

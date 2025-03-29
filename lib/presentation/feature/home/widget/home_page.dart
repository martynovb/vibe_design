part of '../home.dart';

const _tag = 'HomePage';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
    this.scrollTo,
  });

  final MenuOption? scrollTo;

  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  MenuOption _selectedMenuOption = MenuOption.home;
  final _scrollController = ScrollController();
  late final List<SectionViewModel> _sections;
  final _sectionOffsets = <GlobalKey, double>{};
  final _columnKey = GlobalKey();
  bool isScrolling = false;

  late final Map<MenuOption, GlobalKey> _menuOptionToKeyMap;

  late DateTime startTime;

  @override
  void initState() {
    super.initState();
    startTime = DateTime.now();
    _initializeSections();
    _setupScrollListener();
  }

  void _initializeSections() {
    final keys = {
      MenuOption.home: GlobalKey(),
      MenuOption.about: GlobalKey(),
      MenuOption.courses: GlobalKey(),
      MenuOption.pros: GlobalKey(),
      MenuOption.learn: GlobalKey(),
      MenuOption.pricing: GlobalKey(),
      MenuOption.contact: GlobalKey(),
    };

    _menuOptionToKeyMap = keys;

    _sections = [
      SectionViewModel(
        key: keys[MenuOption.home],
        menuOption: MenuOption.home,
        section: HeaderPage(key: keys[MenuOption.home]),
      ),
      SectionViewModel(
        section: GoalPage(),
      ),
      SectionViewModel(
        key: keys[MenuOption.about],
        menuOption: MenuOption.about,
        section: AboutMePage(
          key: keys[MenuOption.about],
        ),
      ),
      SectionViewModel(
        section: MyApproachPage(),
      ),
      SectionViewModel(
        key: keys[MenuOption.courses],
        menuOption: MenuOption.courses,
        section: SelectLevelPage(
          key: keys[MenuOption.courses],
        ),
      ),
      SectionViewModel(
        key: keys[MenuOption.pros],
        menuOption: MenuOption.pros,
        section: WhyMePage(
          key: keys[MenuOption.pros],
        ),
      ),
      SectionViewModel(
        section: MyStudentsPage(),
      ),
      SectionViewModel(
        section: ReviewsPage(),
      ),
      SectionViewModel(
        key: keys[MenuOption.learn],
        menuOption: MenuOption.learn,
        section: LearningProcessPage(
          key: keys[MenuOption.learn],
        ),
      ),
      SectionViewModel(
        section: LearningDetailsPage(),
      ),
      SectionViewModel(
        key: keys[MenuOption.pricing],
        menuOption: MenuOption.pricing,
        section: ChooseYourPathPage(
          key: keys[MenuOption.pricing],
        ),
      ),
      SectionViewModel(
        section: ApplyForCoursePage(),
      ),
      SectionViewModel(
        key: keys[MenuOption.contact],
        menuOption: MenuOption.contact,
        section: FooterPage(
          key: keys[MenuOption.contact],
        ),
      ),
    ];

    WidgetsBinding.instance.addPostFrameCallback((_) {
      AnalyticsLogger.logMessage(
        _tag,
        'Home page rendered in ${DateTime.now().difference(startTime)}',
      );
      _calculateSectionOffsets();
      if (widget.scrollTo != null) {
        _onMenuOptionSelected(widget.scrollTo!);
      }
    });
  }

  void _setupScrollListener() {
    _scrollController.addListener(_onScroll);
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
    final scrollOffset = _scrollController.offset;
    final MenuOption? currentOption = _detectCurrentSection(scrollOffset);

    if (currentOption != null && currentOption != _selectedMenuOption) {
      setState(() => _selectedMenuOption = currentOption);
    }
  }

  MenuOption? _detectCurrentSection(double scrollOffset) {
    final validSections = _sections
        .where((section) =>
            section.key != null && _sectionOffsets.containsKey(section.key))
        .toList();

    final maxScroll = _scrollController.position.maxScrollExtent;
    final isNearBottom = scrollOffset >= maxScroll - 100;

    if (isNearBottom) {
      // Return the last section with a menu option
      final lastSection = validSections.lastWhere(
          // ignore: unnecessary_null_comparison
          (section) => section.menuOption != null,
          orElse: () => validSections.last);
      return lastSection.menuOption;
    }

    // Normal section detection for non-bottom scroll
    for (var section in validSections.reversed) {
      final sectionOffset = _sectionOffsets[section.key]!;
      if (scrollOffset >= sectionOffset) {
        return section.menuOption;
      }
    }

    return null;
  }

  Future<void> _onMenuOptionSelected(MenuOption menuOptionSelected) async {
    final targetKey = _menuOptionToKeyMap[menuOptionSelected];

    if (targetKey == null || isScrolling) return;
    isScrolling = true;

    _scrollController.removeListener(_onScroll);

    setState(() {
      _selectedMenuOption = menuOptionSelected;
    });

    await Scrollable.ensureVisible(
      targetKey.currentContext ?? context,
      duration: const Duration(milliseconds: 500),
    );

    _scrollController.addListener(_onScroll);
    isScrolling = false;
  }

  @override
  Widget build(BuildContext context) {
    return HomeMenuProvider(
      onMenuOptionSelected: _onMenuOptionSelected,
      child: Scaffold(
        body: DeviceLayoutBuilder(
          layoutBuilder: (isMobile) => _buildScrollableContent(isMobile),
        ),
      ),
    );
  }

  Widget _buildScrollableContent(bool isMobile) {
    return Column(
      children: [
        Container(
          color: ColorName.card.withValues(alpha: 0.4),
          child: MenuWidget(
            selectedMenuOption: _selectedMenuOption,
            onMenuOptionSelected: _onMenuOptionSelected,
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            controller: _scrollController,
            child: Column(
              key: _columnKey,
              children: _buildSectionWidgets(isMobile),
            ),
          ),
        ),
      ],
    );
  }

  List<Widget> _buildSectionWidgets(bool isMobile) {
    return List.generate(
      _sections.length,
      (index) => index < (_sections.length - 1)
          ? Column(
              children: [
                RepaintBoundary(child: _sections[index].section),
                if (index < _sections.length - 1)
                  SizedBox(height: isMobile ? 120 : 200),
              ],
            )
          : RepaintBoundary(child: _sections[index].section),
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}

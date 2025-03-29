part of '../menu.dart';

class MenuMobileWidget extends StatefulWidget {
  final MenuOption selectedMenuOption;
  final Function(MenuOption) onMenuOptionSelected;

  const MenuMobileWidget({
    super.key,
    required this.selectedMenuOption,
    required this.onMenuOptionSelected,
  });

  @override
  State<StatefulWidget> createState() => MenuMobileState();
}

class MenuMobileState extends State<MenuMobileWidget> {
  final menuGlobalKey = GlobalKey();

  bool isMenuOpened = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppDimensions.menuMobileHeight,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: Spacing.md),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWell(
                hoverColor: Colors.transparent,
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () => widget.onMenuOptionSelected(MenuOption.home),
                child: Assets.images.logo.svg(
                  height: 24,
                ),
              ),
              const Spacer(),
              InkWell(
                key: menuGlobalKey,
                hoverColor: Colors.transparent,
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () => _showAccountMenu(
                  menuKey: menuGlobalKey,
                  context: context,
                ),
                child: isMenuOpened
                    ? Assets.images.mobileMenuClosed.svg()
                    : Assets.images.mobileMenu.svg(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _showAccountMenu({
    required GlobalKey menuKey,
    required BuildContext context,
  }) async {
    final RenderBox button =
        menuKey.currentContext!.findRenderObject() as RenderBox;
    final RenderBox overlay =
        Overlay.of(context).context.findRenderObject() as RenderBox;
    final RelativeRect position = RelativeRect.fromRect(
      Rect.fromPoints(
        button.localToGlobal(const Offset(1, 100), ancestor: overlay),
        button.localToGlobal(
            button.size.bottomRight(
              Offset.zero,
            ),
            ancestor: overlay),
      ),
      Offset.zero & overlay.size,
    );

    setState(() {
      isMenuOpened = true;
    });

    final MenuOption? selectedOption = await showMenu<MenuOption>(
      context: context,
      position: position,
      color: ColorName.card,
      items: [
        _menuItem(
          context: context,
          menuName: LocaleKeys.main,
          menuOption: MenuOption.home,
        ),
        _menuItem(
          context: context,
          menuName: LocaleKeys.about,
          menuOption: MenuOption.about,
        ),
        _menuItem(
          context: context,
          menuName: LocaleKeys.courses,
          menuOption: MenuOption.courses,
        ),
        _menuItem(
          context: context,
          menuName: LocaleKeys.pros,
          menuOption: MenuOption.pros,
        ),
        _menuItem(
          context: context,
          menuName: LocaleKeys.learnings,
          menuOption: MenuOption.learn,
        ),
        _menuItem(
          context: context,
          menuName: LocaleKeys.prices,
          menuOption: MenuOption.pricing,
        ),
        _menuItem(
          context: context,
          menuName: LocaleKeys.contacts,
          menuOption: MenuOption.contact,
        ),
      ],
    );

    if (selectedOption != null) {
      widget.onMenuOptionSelected(selectedOption);
    }
    setState(() {
      isMenuOpened = false;
    });
    return;
  }

  PopupMenuItem<MenuOption> _menuItem({
    required BuildContext context,
    required String menuName,
    required MenuOption menuOption,
  }) {
    return PopupMenuItem<MenuOption>(
      value: menuOption,
      child: Text(
        menuName.tr(),
        style: TextTheme.of(context).bodyMedium?.copyWith(
              color: widget.selectedMenuOption == menuOption
                  ? ColorName.accent
                  : ColorName.title,
              fontWeight: widget.selectedMenuOption == menuOption
                  ? FontWeight.bold
                  : FontWeight.normal,
            ),
      ),
    );
  }
}

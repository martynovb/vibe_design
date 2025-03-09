part of '../menu.dart';

class MenuWidget extends StatefulWidget {
  final MenuOption selectedMenuOption;

  final Function(MenuOption) onMenuOptionSelected;

  const MenuWidget({
    super.key,
    this.selectedMenuOption = MenuOption.home,
    required this.onMenuOptionSelected,
  });

  @override
  MenuWidgetState createState() => MenuWidgetState();
}

class MenuWidgetState extends State<MenuWidget> {
  @override
  Widget build(BuildContext context) {
    return DeviceLayoutBuilder(layoutBuilder: (isMobile) {
      return isMobile
          ? MenuMobileWidget(
              selectedMenuOption: widget.selectedMenuOption,
              onMenuOptionSelected: widget.onMenuOptionSelected,
            )
          : MenuDesktopWidget(
              selectedMenuOption: widget.selectedMenuOption,
              onMenuOptionSelected: widget.onMenuOptionSelected,
            );
    });
  }
}

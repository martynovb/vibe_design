part of '../menu.dart';

class MenuWidget extends StatefulWidget {
  final Function(MenuOption) onMenuOptionSelected;

  const MenuWidget({
    super.key,
    required this.onMenuOptionSelected,
  });

  @override
  MenuWidgetState createState() => MenuWidgetState();
}

class MenuWidgetState extends State<MenuWidget> {
  MenuOption _selectedMenuOption = MenuOption.home;

  @override
  Widget build(BuildContext context) {
    return DeviceLayoutBuilder(layoutBuilder: (isMobile) {
      return isMobile
          ? MenuMobileWidget(
              selectedMenuOption: _selectedMenuOption,
              onMenuOptionSelected: setSelectedMenuOption,
            )
          : MenuDesktopWidget(
              selectedMenuOption: _selectedMenuOption,
              onMenuOptionSelected: setSelectedMenuOption,
            );
    });
  }

  void setSelectedMenuOption(MenuOption option) {
    widget.onMenuOptionSelected(option);
    setState(() {
      _selectedMenuOption = option;
    });
  }
}

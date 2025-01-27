part of '../menu.dart';

class MenuMobileWidget extends StatelessWidget {
  final MenuOption selectedMenuOption;
  final Function(MenuOption) onMenuOptionSelected;

  const MenuMobileWidget({
    super.key,
    required this.selectedMenuOption,
    required this.onMenuOptionSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('MenuMobileWidget'),
      ),
    );
  }
}

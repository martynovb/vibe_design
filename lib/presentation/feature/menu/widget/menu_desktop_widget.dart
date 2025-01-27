part of '../menu.dart';

class MenuDesktopWidget extends StatelessWidget {
  final MenuOption selectedMenuOption;
  final Function(MenuOption) onMenuOptionSelected;

  const MenuDesktopWidget({
    super.key,
    required this.selectedMenuOption,
    required this.onMenuOptionSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Assets.images.logo.svg(),
        MenuOptionWidget(
          text: LocaleKeys.main.tr(),
          isSelected: selectedMenuOption == MenuOption.home,
          menuOption: MenuOption.home,
          onMenuOptionSelected: onMenuOptionSelected,
        ),
        MenuOptionWidget(
          text: LocaleKeys.about.tr(),
          isSelected: selectedMenuOption == MenuOption.about,
          menuOption: MenuOption.about,
          onMenuOptionSelected: onMenuOptionSelected,
        ),
        MenuOptionWidget(
          text: LocaleKeys.courses.tr(),
          isSelected: selectedMenuOption == MenuOption.courses,
          menuOption: MenuOption.courses,
          onMenuOptionSelected: onMenuOptionSelected,
        ),
        MenuOptionWidget(
          text: LocaleKeys.pros.tr(),
          isSelected: selectedMenuOption == MenuOption.pros,
          menuOption: MenuOption.pros,
          onMenuOptionSelected: onMenuOptionSelected,
        ),
        MenuOptionWidget(
          text: LocaleKeys.learnings.tr(),
          isSelected: selectedMenuOption == MenuOption.learn,
          menuOption: MenuOption.learn,
          onMenuOptionSelected: onMenuOptionSelected,
        ),
        MenuOptionWidget(
          text: LocaleKeys.prices.tr(),
          isSelected: selectedMenuOption == MenuOption.pricing,
          menuOption: MenuOption.pricing,
          onMenuOptionSelected: onMenuOptionSelected,
        ),
        MenuOptionWidget(
          text: LocaleKeys.prices.tr(),
          isSelected: selectedMenuOption == MenuOption.contact,
          menuOption: MenuOption.contact,
          onMenuOptionSelected: onMenuOptionSelected,
        ),
      ],
    );
  }
}

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
    return Container(
      color: ColorName.card.withValues(alpha: 0.4),
      height: AppDimensions.menuDesktopHeight,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: AppDimensions.insetsDesktop,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              hoverColor: Colors.transparent,
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () => onMenuOptionSelected(MenuOption.home),
              child: Assets.images.logo.svg(),
            ),
            AppSpacing.h_48,
            MenuOptionWidget(
              text: LocaleKeys.main.tr(),
              isSelected: selectedMenuOption == MenuOption.home,
              menuOption: MenuOption.home,
              onMenuOptionSelected: onMenuOptionSelected,
            ),
            AppSpacing.h_24,
            MenuOptionWidget(
              text: LocaleKeys.about.tr(),
              isSelected: selectedMenuOption == MenuOption.about,
              menuOption: MenuOption.about,
              onMenuOptionSelected: onMenuOptionSelected,
            ),
            AppSpacing.h_24,
            MenuOptionWidget(
              text: LocaleKeys.courses.tr(),
              isSelected: selectedMenuOption == MenuOption.courses,
              menuOption: MenuOption.courses,
              onMenuOptionSelected: onMenuOptionSelected,
            ),
            AppSpacing.h_24,
            MenuOptionWidget(
              text: LocaleKeys.pros.tr(),
              isSelected: selectedMenuOption == MenuOption.pros,
              menuOption: MenuOption.pros,
              onMenuOptionSelected: onMenuOptionSelected,
            ),
            AppSpacing.h_24,
            MenuOptionWidget(
              text: LocaleKeys.learnings.tr(),
              isSelected: selectedMenuOption == MenuOption.learn,
              menuOption: MenuOption.learn,
              onMenuOptionSelected: onMenuOptionSelected,
            ),
            AppSpacing.h_24,
            MenuOptionWidget(
              text: LocaleKeys.prices.tr(),
              isSelected: selectedMenuOption == MenuOption.pricing,
              menuOption: MenuOption.pricing,
              onMenuOptionSelected: onMenuOptionSelected,
            ),
            AppSpacing.h_24,
            MenuOptionWidget(
              text: LocaleKeys.contacts.tr(),
              isSelected: selectedMenuOption == MenuOption.contact,
              menuOption: MenuOption.contact,
              onMenuOptionSelected: onMenuOptionSelected,
            ),
            AppSpacing.h_48,
            InkWell(
              hoverColor: Colors.transparent,
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              child: Assets.images.instagram.svg(),
              onTap: () => launchUrl(Uri.parse(AppConstants.instagramProfile)),
            ),
          ],
        ),
      ),
    );
  }
}
